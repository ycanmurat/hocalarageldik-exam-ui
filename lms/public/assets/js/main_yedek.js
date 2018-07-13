$(function () {

    /* Tooltip */
    /* $('[data-toggle="tooltip"]').tooltip(); */


    $('.ui.dropdown').dropdown({
        transition: 'vertical flip',
        on: 'hover'
    });

    $('.ui.accordion').accordion();

    $('.odeme_selector .checkbox')
        .checkbox({
            // check all children
            onChecked: function () {
                $('.odeme').slideUp();
                $('#' + $(this).val()).stop().slideDown();
            }
        });

    $('.tcno').change(function () {
        $('.tcnoCopy').val($(this).val());
    });

    $('.openPopup').click(function () {

        var width = screen.width;
        var height = screen.height;
        var tp = 0;
        var lf = 0;

        if (screen.width >= 920) {
            var width = 920;
            var height = 570;
            var tp = ((screen.height - 570) / 2) / 2;
            var lf = (screen.width - 920) / 2;
        }

        if (screen.width >= 1281) {
            var width = 980;
            var height = 550;
            var tp = ((screen.height - 550) / 2) / 2;
            var lf = (screen.width - 980) / 2;
        }

        var focusLa = window.open($(this).data('href'), "_blank", "toolbar=no,scrollbars=no,menubar=no,status=no,titlebar=no,resizable=yes,top=" + tp + ",left=" + lf + ",width=" + width + ",height=" + height);
        focusLa.focus();
    });

    function hgOpenPop(_url) {

        if (_url == 'javascript:;') {
            $('.ui.basic.modal#UyariModal').modal('show');
        } else {
            var width = screen.width;
            var height = screen.height;
            var tp = 0;
            var lf = 0;

            if (screen.width >= 920) {
                var width = 920;
                var height = 570;
                var tp = ((screen.height - 570) / 2) / 2;
                var lf = (screen.width - 920) / 2;
            }

            if (screen.width >= 1281) {
                var width = 980;
                var height = 550;
                var tp = ((screen.height - 550) / 2) / 2;
                var lf = (screen.width - 980) / 2;
            }

            var focusLa = window.open(_url, "_blank", "toolbar=no,scrollbars=no,menubar=no,status=no,titlebar=no,resizable=yes,top=" + tp + ",left=" + lf + ",width=" + width + ",height=" + height);
            focusLa.focus();
        }
    }


    /* sidebar-event-close */
    $('#sidebar-event-close, .opacityBg').click(function () {
        $('#sidebar').animate({marginLeft: '-80%'}, 250);
        $('.opacityBg').fadeOut('fast');
        $('html, body').removeClass('modal-open');
    });

    /* sidebar-event-open */
    $('#sidebar-event-open').click(function () {
        $('#sidebar').animate({marginLeft: '0%'}, 250);
        $('.opacityBg').fadeIn('fast');
        $('html, body').addClass('modal-open');
    });


    /* mobile-sidebar-event-close */
    $('#mobile-sidebar-event-close, .opacityBg').click(function () {
        $('#mobile-sidebar').animate({marginLeft: '-80%'}, 250);
        $('.opacityBg').fadeOut('fast');
        $('html, body').removeClass('modal-open');
    });

    /* sidebar-event-open */
    $('#mobile-sidebar-event-open,#mobile-sidebar-event-open_2').click(function () {
        $('#mobile-sidebar').animate({marginLeft: '0%'}, 250);
        $('.opacityBg').fadeIn('fast');
        $('html, body').addClass('modal-open');
    });


    /* Sidebar Child (Plus or Minus) */
    $(".LessonList > li > a, .LessonList > li > ul > li > a, .LessonList > li > ul > li > ul > li > a, .LessonList > li > ul > li > ul > li > ul > li > a").each(function (index) {
        var countChild = $(this).parent().find('ul').length;
        if (countChild != 0) {
            var iFa = '';
            $($(this).parent().find('ul')).each(function (index) {
                if (iFa == '') {
                    if ($(this).css('display') == 'block') {
                        iFa = 'minus';
                    } else {
                        iFa = 'plus';
                    }
                }
            });
            $(this).html($(this).html().trim() + ' <a href="javascript:;" class="btn btn-sm btn-primary pull-right plusBtn"><i class="fa fa-' + iFa + '"></i></a>');
        }
    });

    /* Left Menu Open */
    $('.plusBtn').click(function () {
        if ($(this).html() == '<i class="fa fa-plus"></i>') {
            $(this).closest('li').find('ul').css('display', 'block').find('ul').css('display', 'none');
            $(this).html('<i class="fa fa-minus"></i>');
        } else {
            $(this).closest('li').find('ul').css('display', 'none');
            $(this).html('<i class="fa fa-plus"></i>');
        }
    });

    /* Sign Out */

    $('.sign-out-btn').click(function () {
        $('.ui.basic.modal#SignOut').modal('show');
    });

    $('.aramaToggle').click(function () {
        $('#SearchTop').toggle('height');
        $('#SearchTop').find('input').focus();
    });


    $('.bxPopup a').click(function () {
        var title = $(this).data('title');
        var href = $(this).data('href');

        var docuSize = parseInt($(document).width());

        if (docuSize < 769) {
            window.location.href = href;
        } else {
            $('.ui.basic.modal.boxPopup').find('.header').html(title);
            $('.ui.basic.modal.boxPopup').find('.embed-responsive-item').attr('src', href);
            $('.ui.basic.modal.boxPopup').modal('show');

            $('.ui.basic.modal.boxPopup').modal({
                onHide: function () {
                    $('.ui.basic.modal.boxPopup').find('.header').html('');
                    $('.ui.basic.modal.boxPopup').find('.embed-responsive-item').attr('src', '');
                }
            }).modal('show');
        }


    });

    /* Uyari Modal */
    $('.uyariModal').click(function () {
        $('.ui.basic.modal#UyariModal').modal('show');
    });

    /* Sticky Header */
    stickyHeader();
    $(window).resize(function () {
        stickyHeader();
    });

    //var topMenu = $('#topMenum').offset().top;

    /*jQuery(window).scroll(function () {

        var bodyTop = $(document).scrollTop();
        var winSize = parseInt($(document).width());

        if (winSize < 992) {
            if ($('#topMenum').hasClass('sticky')) {
                if (bodyTop >= topMenu) {
                    $('#topMenum').addClass('stickyim');
                    $('.hid').fadeIn();
                    console.log('append');
                } else {
                    $('#topMenum').removeClass('stickyim');
                    $('.hid').fadeOut();
                    console.log('remove');
                }
            }
        }
    });*/

    var wid = parseInt($(document).width());

    if (wid < 321) {
        $('#wid').remove();
    }


    /* Register Page */
    $('.lastname').keyup(function () {
        $(this).val($(this).val().toUpperCase().trim());

    });
    $('.email').keyup(function () {
        $(this).val($(this).val().toLowerCase().trim());
    });

    $('.username').keyup(function () {
        var charMap = {
            Ç: 'C',
            Ö: 'O',
            Ş: 'S',
            İ: 'I',
            I: 'i',
            Ü: 'U',
            Ğ: 'G',
            ç: 'c',
            ö: 'o',
            ş: 's',
            ı: 'i',
            ü: 'u',
            ğ: 'g'
        };

        var str = $(this).val().trim();

        str_array = str.split('');

        for (var i = 0, len = str_array.length; i < len; i++) {
            str_array[i] = charMap[str_array[i]] || str_array[i];
        }

        str = str_array.join('');

        var clearStr = str.replace(/[çöşüğı ]/gi, "");
        clearStr = clearStr.toLowerCase().replace(/[^a-zA-Z0-9]+/g, "-");
        $(this).val(clearStr);
    });

    $('.username').focus(function () {
        var charMap = {
            Ç: 'C',
            Ö: 'O',
            Ş: 'S',
            İ: 'I',
            I: 'i',
            Ü: 'U',
            Ğ: 'G',
            ç: 'c',
            ö: 'o',
            ş: 's',
            ı: 'i',
            ü: 'u',
            ğ: 'g'
        };

        var str = $('.name').val().trim() + $('.lastname').val().trim();

        str_array = str.split('');

        for (var i = 0, len = str_array.length; i < len; i++) {
            str_array[i] = charMap[str_array[i]] || str_array[i];
        }

        str = str_array.join('');

        var clearStr = str.replace(/[çöşüğı ]/gi, "");
        clearStr = clearStr.toLowerCase().replace(/[^a-zA-Z0-9]+/g, "-");
        $(this).val(clearStr);
    });

    $('.username').change(function () {
        var charMap = {
            Ç: 'C',
            Ö: 'O',
            Ş: 'S',
            İ: 'I',
            I: 'i',
            Ü: 'U',
            Ğ: 'G',
            ç: 'c',
            ö: 'o',
            ş: 's',
            ı: 'i',
            ü: 'u',
            ğ: 'g'
        };

        var str = $(this).val().trim();

        str_array = str.split('');

        for (var i = 0, len = str_array.length; i < len; i++) {
            str_array[i] = charMap[str_array[i]] || str_array[i];
        }

        str = str_array.join('');

        var clearStr = str.replace(/[çöşüğı ]/gi, "");
        clearStr = clearStr.toLowerCase().replace(/[^a-zA-Z0-9]+/g, "-");
        $(this).val(clearStr);
    });


    $('.name').keyup(function () {
        var Ad = $(this).val().split(' ');
        var newAd = '';
        for (a = 0; a < Ad.length; a++) {
            newAd = newAd + " " + Ad[a][0].toUpperCase() + Ad[a].substr(1).toLowerCase();
        }
        $(this).val(newAd.trim());
    });
    $('.name').change(function () {
        $(this).val($(this).val().trim());
    });
    $("#registerForm").validate({
        errorElement: 'span',
        errorClass: 'has-warning',
        ignore: "",
        rules: {
            name: {
                required: true,
                minlength: 2
            },
            phone: {
                required: true
            },
            lastname: {
                required: true,
                minlength: 2
            },
            username: {
                required: true,
                minlength: 3,
                maxlength: 50
            },
            email: {
                required: true,
                email: true
            },
            email_eq: {
                equalTo: "#email"
            },
            pass: {
                required: true,
                minlength: 6
            },
            pass_eq: {
                equalTo: "#pass"
            },
            sozlesme: {
                required: true
            }
        },
        messages: {
            name: {
                required: "Lütfen adınızı giriniz.",
                minlength: "Adınız en az 2 karakterden oluşmalıdır."
            },
            phone: {
                required: "Lütfen telefon numaranızı giriniz."
            },
            lastname: {
                required: "Lütfen soyadınızı giriniz.",
                minlength: "Soyadınız en az 2 karakterden oluşmalıdır."
            },
            username: {
                required: "Lütfen bir kullanıcı adı belirleyiniz.",
                minlength: "Kullanıcı adınız en az 2 karakterden oluşmalıdır.",
                maxlength: "Kullanıcı adınız en fazla 50 karakterden oluşmalıdır."
            },
            email: {
                required: "Lütfen e-posta adresinizi giriniz.",
                email: "Lütfen geçerli bir e-posta adresi giriniz."
            },
            email_eq: {
                required: "Lütfen e-posta adresinizi giriniz.",
                email: "Lütfen geçerli bir e-posta adresi giriniz.",
                equalTo: "E-Posta adresleriniz eşleşmiyor, lütfen kontrol ediniz."
            },
            pass: {
                required: "Lütfen bir parola belirleyin.",
                minlength: "Parolanız en az 6 karakterden oluşmalıdır."
            },
            pass_eq: {
                required: "Lütfen bir parola belirleyin.",
                minlength: "Parolanız en az 6 karakterden oluşmalıdır.",
                equalTo: "Parolalarınız eşleşmiyor, lütfen kontrol ediniz."
            },
            sozlesme: ""
        }
    });
    /* /Register Page */


    /* MesajForm */
    $("#mesajForm").validate({
        errorElement: 'span',
        errorClass: 'has-warning',
        ignore: "",
        rules: {
            tur: {
                required: true
            },
            konu: {
                required: true
            },
            message: {
                required: true,
                minlength: 15
            }
        },
        messages: {
            tur: {
                required: "Lütfen departman seçiniz."
            },
            konu: {
                required: "Lütfen mesajınıza bir konu başlığı giriniz."
            },
            message: {
                required: "Lütfen mesajınızı giriniz.",
                minlength: "Mesajınız en az 15 karakterden oluşmalıdır."
            }
        }
    });
    /* MesajForm */

    /* OBP Puanı TYT Çözüm */
    $("#obppuan").validate({
        errorElement: 'span',
        errorClass: 'has-warning',
        ignore: "",
        rules: {
            obp: {
                required: true
            },
            din_kulturu: {
                required: true
            }
        },
        messages: {
            obp: {
                required: "Lütfen OBP Puanı Giriniz."
            },
            din_kulturu: {
                required: "Din Kültürü ve Ahlak Bilgisi Durumunuzu Seçiniz!"
            }
        }
    });
    /* OBP Puanı TYT Çözüm */




    /* ccForm */
    $("#ccForm_1").validate({
        errorElement: 'span',
        errorClass: 'has-warning',
        ignore: "",
        rules: {
            TCNo: {
                required: false,
                minlength: 11,
                maxlength: 11
            },
            Telefon: {
                required: true
            },
            Ad: {
                required: true
            },
            invoice_name: {
                required: true
            },
            Soyad: {
                required: true
            },
            CCNo: {
                required: true
            },
            CVV: {
                required: true,
                minlength: 3,
                maxlength: 3
            },
            CCM: {
                required: true
            },
            CCY: {
                required: true
            },
            Fatura: {
                required: true
            },
            il: {
                required: true
            },
            ilce: {
                required: true
            },
            order_city: {
                required: true
            },
            order_state: {
                required: true
            },
            order_address: {
                required: true
            }
        },
        messages: {
            TCNo: {
                required: "T.C. Kimlik Nu. zorunludur.",
                minlength: "T.C. Kimlik Nu. 11 hanelidir.",
                maxlength: "T.C. Kimlik Nu. 11 hanelidir."
            },
            Telefon: {
                required: "Telefon numarası zorunludur."
            },
            Ad: {
                required: "Kart sahibinin adını giriniz."
            },
            invoice_name: {
                required: "Ad soyad veya firma ünvanı giriniz."
            },
            Soyad: {
                required: "Kart sahibinin soyadını giriniz."
            },
            CCNo: {
                required: "Kredi kartı numarasını giriniz."
            },
            CVV: {
                required: "Kredi kartı güvenlik kodunu giriniz.",
                minlength: "Kredi kartı güvenlik kodu 3 hanelidir.",
                maxlength: "Kredi kartı güvenlik kodu 3 hanelidir."
            },
            CCM: {
                required: "Kredi kartı son kullanma tarihi giriniz.(Ay)"
            },
            CCY: {
                required: "Kredi kartı son kullanma tarihi giriniz.(Yıl)"
            },
            Fatura: {
                required: "Fatura adresinizi giriniz."
            },
            il: {
                required: "İl seçiniz."
            },
            ilce: {
                required: "İlçe seçiniz."
            },
            order_city: {
                required: "Kargo adresi için il zorunludur."
            },
            order_state: {
                required: "Kargo adresi için ilçe zorunludur."
            },
            order_address: {
                required: "Kargo adresi zorunludur."
            }
        }
    });

    $("#havaleForm").validate({
        errorElement: 'span',
        errorClass: 'has-warning',
        ignore: "",
        rules: {
            Fatura: {
                required: true
            },
            Telefon: {
                required: true
            },
            il: {
                required: true
            },
            ilce: {
                required: true
            },
            invoice_name: {
                required: true
            },
            order_city: {
                required: true
            },
            order_state: {
                required: true
            },
            order_address: {
                required: true
            }
        },
        messages: {
            Fatura: {
                required: "Fatura adresinizi giriniz."
            },
            Telefon: {
                required: "Telefon numarası zorunludur."
            },
            il: {
                required: "İl seçiniz."
            },
            ilce: {
                required: "İlçe seçiniz."
            },
            invoice_name: {
                required: "Ad soyad veya firma ünvanı giriniz."
            },
            order_city: {
                required: "Kargo adresi için il zorunludur."
            },
            order_state: {
                required: "Kargo adresi için ilçe zorunludur."
            },
            order_address: {
                required: "Kargo adresi zorunludur."
            }
        }
    });


    $("#odeme_kapida_form").validate({
        errorElement: 'span',
        errorClass: 'has-warning',
        ignore: "",
        rules: {
            Fatura: {
                required: true
            },
            il: {
                required: true
            },
            ilce: {
                required: true
            },
            invoice_name: {
                required: true
            },
            phone: {
                required: true
            },
            order_city: {
                required: true
            },
            order_state: {
                required: true
            },
            order_address: {
                required: true
            }
        },
        messages: {
            Fatura: {
                required: "Fatura adresinizi giriniz."
            },
            il: {
                required: "İl seçiniz."
            },
            ilce: {
                required: "İlçe seçiniz."
            },
            invoice_name: {
                required: "Ad soyad veya firma ünvanı giriniz."
            },
            phone: {
                required: "Telefon numarası zorunludur."
            },
            order_city: {
                required: "Kargo adresi için il zorunludur."
            },
            order_state: {
                required: "Kargo adresi için ilçe zorunludur."
            },
            order_address: {
                required: "Kargo adresi zorunludur."
            }
        }
    });

    $("#discount").validate({
        errorElement: 'span',
        errorClass: 'has-warning',
        ignore: "",
        rules: {
            code: {
                required: true
            }
        },
        messages: {
            code: {
                required: "İndirim kodu giriniz."
            }
        }
    });
    /* ccForm */


    /* Contact Form */

    $("#contactForm").validate({
        errorElement: 'span',
        errorClass: 'has-warning',
        ignore: "",
        rules: {
            name: {
                required: true,
                minlength: 3
            },
            lastname: {
                required: true,
                minlength: 2
            },
            email: {
                required: true,
                email: true
            },
            phone: {
                required: true
            },
            subject: {
                required: true,
                minlength: 3
            },
            message: {
                required: true,
                minlength: 15
            }
        },
        messages: {
            name: {
                required: "Lütfen adınızı giriniz.",
                minlength: "Adınız en az 3 karakterden oluşmalıdır."
            },
            lastname: {
                required: "Lütfen soyadınızı giriniz.",
                minlength: "Soyadınız en az 2 karakterden oluşmalıdır."
            },
            email: {
                required: "Lütfen e-posta adresinizi giriniz.",
                email: "Lütfen geçerli bir e-posta adresi giriniz."
            },
            phone: {
                required: "Lütfen telefon numaranızı giriniz.",
                minlength: "Telefon numarası en az 10 karakter olmalıdır.",
                maxlength: "Telefon numarası en çok 11 karakter olmalıdır."
            },
            subject: {
                required: "Lütfen konu giriniz.",
                minlength: "Konu en az 3 karakterden oluşmalıdır."
            },
            message: {
                required: "Lütfen mesajınızı giriniz.",
                minlength: "Mesajınız en az 15 karakter olmalıdır."
            }
        }
    });


    $("#BilgilerimForm").validate({
        errorElement: 'span',
        errorClass: 'has-warning',
        ignore: "",
        rules: {
            name: {
                required: true,
                minlength: 3
            },
            lastname: {
                required: true,
                minlength: 2
            },
            phone: {
                required: true
            },
            gender: {
                required: true
            },
            city: {
                required: true
            },
            state: {
                required: true
            },
            address: {
                required: true,
                minlength: 15
            }
        },
        messages: {
            name: {
                required: "Lütfen adınızı giriniz.",
                minlength: "Adınız en az 3 karakterden oluşmalıdır."
            },
            lastname: {
                required: "Lütfen soyadınızı giriniz.",
                minlength: "Soyadınız en az 2 karakterden oluşmalıdır."
            },
            phone: {
                required: "Lütfen telefon numaranızı giriniz."
            },
            gender: {
                required: "Lütfen cinsiyetinizi giriniz."
            },
            city: {
                required: "Lütfen il seçiniz."
            },
            state: {
                required: "Lütfen ilçe giriniz."
            },
            address: {
                required: "Lütfen adresinizi giriniz.",
                minlength: "Adresiniz en az 15 karakter olmalıdır."
            }
        }
    });

    /* Contact Form */


    /* Login Form */

    $("#loginForm").validate({
        errorElement: 'span',
        errorClass: 'has-warning',
        ignore: "",
        rules: {
            email: {
                required: true
            },
            pass: {
                required: true
            }
        },
        messages: {
            email: {
                required: "Lütfen  E-Posta Adresinizi veya Kullanıcı Adınızı Giriniz."
            },
            pass: {
                required: "Lütfen Parolanızı Giriniz."
            }
        }
    });

    /* Login Form */


    /* E-Posta Onay */
    $("#codeForm").validate({
        errorElement: 'span',
        errorClass: 'has-warning',
        ignore: "",
        rules: {
            code: {
                required: true
            }
        },
        messages: {
            code: {
                required: "Lütfen onay kodunu giriniz."
            },
        }
    });
    $("#emailForm").validate({
        errorElement: 'span',
        errorClass: 'has-warning',
        ignore: "",
        rules: {
            email: {
                required: true,
                email: true
            }
        },
        messages: {
            email: {
                required: "Lütfen e-posta adresi giriniz.",
                email: "Lütfen geçerli bir e-posta adresi giriniz."
            },
        }
    });
    /* E-Posta Onay */

    /* Şifre Değiştir */
    $("#sifredegistir").validate({
        errorElement: 'span',
        errorClass: 'has-warning',
        ignore: "",
        rules: {
            pass_ex: {
                required: true
            },
            pass: {
                required: true,
                minlength: 6
            },
            pass_eq: {
                equalTo: "#pass"
            },

        },
        messages: {
            pass_ex: {
                required: "Lütfen mevcut parolanızı giriniz."
            },
            pass: {
                required: "Lütfen bir parola belirleyin.",
                minlength: "Parolanız en az 6 karakterden oluşmalıdır."
            },
            pass_eq: {
                equalTo: "Parolalar eşleşmiyor."
            }
        }
    });
    /* Şifre Değiştir */

    $(".phone").mask("9 (999) 999 99 99");
    $(".ccno").mask("9999-9999-9999-9999");
    $(".cvv").mask("999");
    $(".TCNo").mask("99999999999");

    $.mask.definitions['C'] = "[A-Z0-9]";

    $(".uyelik_kodu").mask("CCC-CCC-CCC");

    $(".ccno").focusin(function () {
        $(this).val('');
    })


    $("#imgInp").change(function () {
        readURL(this);
        $('#inputfile').hide();
        $('.yukle').show();
    });

    $('.avatar-a').click(function () {
        $('#inputfile').show();
        $('.yukle').hide();
        $('#avatarImg').attr('src', $('#avatarImg').attr('data-src'));
        $('.ui.basic.modal.AvatarPopup').modal('show');
    });

    $('.il').change(function () {
        var Plaka = $(this).find(':selected').data('id');
        var Text = $(this).find(':selected').text();

        $.getJSON("/Json/Cities/" + Plaka, function (data) {
            $('.ilce').html('<option selected value="">İlçe</option>');
            $.each(data, function (key, val) {
                $('.ilce').append('<option selected value="' + val['ilce'] + '">' + val['ilce'] + '</option>');
            });
            $('.ilce').val('');
        }).always(function () {
            if (parseInt(Text.length) == 2) {
                $('.ilce').html('<option selected value="">İlçe</option>');
            } else {
                $('.il').val(Text);
            }
        });


    });

    $('.ils').change(function () {
        var Plaka = $(this).find(':selected').data('id');
        var Text = $(this).find(':selected').text();

        $.getJSON("/Json/Cities/" + Plaka, function (data) {
            $('.ilces').html('<option selected value="">İlçe</option>');
            $.each(data, function (key, val) {
                $('.ilces').append('<option selected value="' + val['ilce'] + '">' + val['ilce'] + '</option>');
            });
            $('.ilces').val('');
        }).always(function () {
            if (parseInt(Text.length) == 2) {
                $('.ilces').html('<option selected value="">İlçe</option>');
            } else {
                $('.ils').val(Text);
            }
        });
    });

    $('.ilsbook').change(function () {
        var Plaka = $(this).find(':selected').data('id');
        var Text = $(this).find(':selected').text();

        $.getJSON("/Json/BookStoreCities/" + Plaka, function (data) {
            $('.ilcessbook').html('<option selected value="">İlçe</option>');
            $.each(data.towns, function (key, val) {
                $('.ilcessbook').append('<option value="' + val['id'] + '"  data-sid="' + val['id'] + '">' + val['name'] + '</option>');
            });
            $('.ilcessbook').val('');
        }).always(function () {
            if (parseInt(Text.length) == 2) {
                $('.ilcessbook').html('<option selected value="">İlçe</option>');
            } else {
                // $('.ilsbook').val(Text);
            }
        });
    });

    $('.ilcessbook').change(function () {
        var Plaka = $(this).find(':selected').data('sid');
        var Text = $(this).find(':selected').text();

        $.getJSON("/Json/BookStoreTowns/" + Plaka, function (data) {
            $('.stores').html('');

            $.each(data, function (key, val) {
                $('.stores').append('<div class="col-md-12 mycard2odeme  mycard2 rounded ">\n' +
                    '        <h5 class="ui header">' + val['name'] + '</h5>\n' +
                    '        <table class="table card-text">\n' +
                    '            <tr style="border: none;">\n' +
                    '                <th style="border: none; width:120px; ">Adres</th>\n' +
                    '                <th style="border: none; width:5px;">:</th>\n' +
                    '                <td style="border: none;">' + val['address'] + '</td>\n' +
                    '            </tr>\n' +
                    '            <tr>\n' +
                    '                <th>İl / İlçe</th>\n' +
                    '                <th>:</th>\n' +
                    '                <td>' + val['city']['name'] + '/' + val['town']['name'] + '</td>\n' +
                    '            </tr>\n' +
                    '            <tr>\n' +
                    '                <th>Eposta</th>\n' +
                    '                <th>:</th>\n' +
                    '                <td>' + val['email'] + '</td>\n' +
                    '            </tr>\n' +
                    '            <tr>\n' +
                    '                <th>Telefon</th>\n' +
                    '                <th>:</th>\n' +
                    '                <td>' + val['phone'] + '</td>\n' +
                    '            </tr>\n' +
                    '        </table>\n' +
                    '    </div>');
            });
            $('.stores').val('');
        }).always(function () {
            if (parseInt(Text) == -1) {
                $('.stores').html('<option selected value=""  data-sid="-1">İlçe</option>');
            } else {
                // $('.ilsbook').val(Text);
            }
        });
    });

    $('.ilss').change(function () {
        var Plaka = $(this).val();
        $.getJSON("/Json/Cities/" + Plaka, function (data) {
            $('.ilcess').html('<option selected value="">İlçe</option>');
            $.each(data, function (key, val) {
                if (val['ilce']) {
                    $('.ilcess').append('<option selected value="' + val['ilce'] + '">' + val['ilce'] + '</option>');
                }
            });
            $('.ilcess').val('');
        });
        if ($(this).val() == '') {
            $('.ilcess').html('<option selected value="">İlçe</option>');
        }
    });

    $('#inputfile').click(function () {
        $('.inputfile').trigger('click');
    });


    $(".onlyNumber").keydown(function (e) {
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
            (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) ||
            (e.keyCode == 67 && (e.ctrlKey === true || e.metaKey === true)) ||
            (e.keyCode == 88 && (e.ctrlKey === true || e.metaKey === true)) ||
            (e.keyCode >= 35 && e.keyCode <= 39)) {
            return;
        }
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });


});

function close_x() {
    $.get("/?Duyurma=1", function (data) {
        console.log("Duyurmucam :)");
        $('#sidebar').css('padding-top', '10px');
    });
}

function stickyHeader() {
    var winSize = parseInt($(window).width());
    if (winSize > 991) {

        if (!$('header#head').hasClass('sticky-top')) {
            $('header#head').addClass('sticky-top');
        }

        if ($('#topMenum').hasClass('sticky')) {
            $('#topMenum').removeClass('sticky');
            $('#topMenum').removeClass('stickyim');
        }

    } else {
        if ($('header#head').hasClass('sticky-top')) {
            $('header#head').removeClass('sticky-top');
        }

        if (!$('#topMenum').hasClass('sticky')) {
            $('#topMenum').addClass('sticky');
        }
    }
}


function Kilavuz(th, Kilavuz_ID, Cat_ID) {
    $.get("/Json/Kilavuz/" + Kilavuz_ID + "/" + Cat_ID + "/" + th.prop('checked'), function (data) {
        if (th.prop('checked') === false) {
            $('#KilavuzText').html('<i class="remove icon"></i> Bu videoyu izlemedim.');
        } else {
            $('#KilavuzText').html('<i class="checkmark icon"></i> Bu videoyu izledim.');
        }
        $('#KilavuzModal').modal('show');
    });
}


function readURL(input) {

    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#avatarImg').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}


function bireysel() {
    $('.tc_vergi').html('T.C. Kimlik Numarası');
    $('.unvan_ad').html('Ad Soyad');
    $('.vergi_dairesi').css('display', 'none');

}

function kurumsal() {
    $('.tc_vergi').html('Vergi Numarası');
    $('.unvan_ad').html('Firma Adı');
    $('.vergi_dairesi').css('display', '');
}


window.dataLayer = window.dataLayer || [];

function gtag() {
    dataLayer.push(arguments);
}

gtag('js', new Date());

gtag('config', 'UA-60438650-2');

