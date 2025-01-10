*** Variables ***
${MENU_CONTACT_US}      //span[text()='Hubungi HIGO']
${INPUT_NAME}           //label[text()='Nama Lengkap']/following::input
${INPUT_EMAIL}          //label[text()='Email']/following::input
${INPUT_PHONE}          //label[text()='Nomor Telepon']/following::input
${INPUT_COMPANY}        //label[text()='Nama perusahaan/lokasi/event/brand']/following-sibling::input
${CHOOSE_SERVICE}       //div[@class='relative']//select[1]
${INPUT_MESSAGE}        //textarea[@placeholder='Tulis pesan kamu']
${BUTTON_SUBMIT}        //button[@type='submit']
${LABEL_SUCCES}         //div[contains(@class,'rounded border')]
