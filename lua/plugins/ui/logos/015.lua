local logo = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣻⢿⣿⣻⢟⣿⣿⣻⣿⣻⣧⣁⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢪⠀⠀⢐⠁⠀⡎⡇⠀⠀⠀⠀⠀⠁⠢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣯⣛⣿⣿⣿⣿⢿⣿⣿⣿⣯⣿⣽⢿⢿⡻⣏⢿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣯⣟⣶⣿⣿⣿⡷⣿⣳⣟⡾⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢚⠃⢘⠀⠀⣸⡂⠀⡇⠃⠀⠀⠀⠀⢀⠀⠀⠐⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣷⡿⣯⣛⣾⢿⣿⡿⣇⢲⣮⢿⣹⣎⣷⣿⣿⡽⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣾⣽⣳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠁⡼⠀⣸⠀⠀⠃⠃⠀⡇⢀⠀⠀⠀⠀⠘⢸⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡝⣧⢿⣹⡾⣼⢧⣿⣽⣮⣿⢿⡽⣯⢿⣞⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣳⢯⣷⡟⡄⠀⠀⠀⠀⠀⠀⣠⠪⢐⠉⡦⡇⢣⡇⢀⢠⣾⠀⡇⠀⠀⠀⠀⠀⠀⠇⡎⠑⠠⣀⠀⠑⢄⠀⠀⠀⠀⠀⠀⢸⢷⣫⢟⡾⣽⣿⡿⣯⣟⣯⢷⣻⢯⣿⣽⣻⣽⣷⣻⡶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⡿⣿⣳⣳⡟⡆⠀⠀⠀⡠⢠⠡⢘⡀⢎⠷⢱⠈⢧⠢⠄⢫⠀⠄⠘⡀⢁⠀⠰⠀⠸⢱⢄⡀⠀⠉⠐⠒⠀⠢⢄⠀⠀⠀⡸⢯⣳⣿⣿⣿⣿⣿⣳⢿⣞⣿⣻⣯⣿⢾⣽⡷⣿⣟⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡝⡏⢧⣇⠠⠔⠨⡐⠀⠆⣡⡰⢼⡆⡏⡄⠈⢣⡘⡈⣧⢸⢀⢡⠆⠆⠀⢣⠀⢫⣧⣇⠁⠲⠠⠤⠤⠤⠤⠬⠕⠒⣟⣷⡿⣿⣿⣿⣿⣿⣽⡿⣾⣯⣿⡿⣿⣻⣿⣽⣿⣿⣻⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣹⢳⠉⠁⠒⠒⠓⠂⠋⠉⠁⢀⢻⡇⠼⣱⠀⢂⠹⣦⢸⣸⡄⡀⠚⣊⠄⠀⢂⠈⣾⣛⠄⠀⠀⠀⠀⠀⠀⠀⠀⠸⡞⢹⣧⣿⠯⣿⣿⡿⣿⣿⡿⣿⣽⣿⣿⣿⣿⣿⡿⣿⠽⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⠝⠁⠈⠠⠀⠀⠀⠀⠀⡠⠶⡤⣟⢷⢈⢳⣇⢀⠊⢊⠳⣿⣳⡀⢁⠘⡆⠀⠀⢂⢸⠚⠒⠒⠀⠀⠀⠀⠀⠀⠀⠎⠃⢸⣺⣼⡌⠙⡿⡿⡾⢛⣿⣿⢿⣿⣿⣿⢿⣏⣫⢫⠋⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⡟⠟⡋⠀⠀⠀⠀⡇⠀⠀⠀⠰⠃⠀⡙⠿⣜⡎⡎⣻⣮⠆⢫⡳⣝⢿⣿⣎⣠⠙⣆⠳⠈⢎⣆⠀⠀⠀⢇⠀⠀⠀⠀⢸⠀⠀⡈⠙⠛⠁⠀⠁⠃⠁⢸⣯⣽⡾⢿⣯⣽⠟⠿⠋⠈⡀⠈⡆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠂⠀⣱⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠜⠁⠀⠀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠆⡀⠐⢅⠀⠘⣷⡠⢉⢎⠢⡄⠑⠌⠢⡉⠻⣳⣄⠘⢄⠀⠈⠜⡀⢄⠀⠘⠀⠀⠀⠀⠘⠀⠀⠇⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠁⠈⢻⡄⠀⠀⠀⠀⢱⡀⡇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡘⠀⢻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣳⡏⠀⠀⠀⠘⡇⠀⠀⠀⠀⠀⠀⠀⢠⠀⠠⠀⠘⠆⠀⠸⣟⢦⡠⠙⢌⡑⢄⡑⢌⠂⢄⠉⡛⠾⣳⣄⠈⢆⠠⡟⠀⠇⠀⠀⠀⡄⠀⠀⠘⡆⠀⠀⠀⠀⠀⠀⡠⢀⠃⢠⠀⠈⠋⠀⠀⠀⠀⡿⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⢀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣟⠕⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⢠⠀⠀⢸⠀⠀⠆⠀⢸⠀⠀⠘⢮⠑⢟⣢⢜⡦⡈⢒⠅⡒⠨⠊⠔⡄⡉⠑⠤⢧⡀⠢⡀⢀⠀⠀⡇⠀⠀⠀⢰⠀⠀⠀⠀⠀⠔⠁⡜⠀⢸⠀⠀⠀⠀⠀⠀⠀⠆⢣⠁⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢰⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⡿⡿⣹⠋⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠑⠀⠈⡀⢀⠜⠀⡤⢠⡀⢨⡆⠀⠀⠈⠳⡄⡈⢑⠜⣹⠦⣌⡌⠒⢤⣀⠈⠘⢔⢄⠀⠈⢂⠈⢄⠌⡢⠇⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠘⣀⣀⣸⠀⠀⠀⠀⠀⠀⠰⠀⡘⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⡈⠈⢻⣿⢾⣿⣿⣿⣿⣿⣿⡿⠏⡉⠀⠀⠀⠀⠀⠀⠀⠀⢸⡆⠀⠀⣀⠀⢣⠂⠀⡌⠀⠀⠙⡜⢺⡄⢀⣖⠡⠈⠚⠢⢕⢊⡁⠊⠱⠿⠲⠮⠝⠶⣤⡉⢕⢄⠀⠡⠀⠡⡊⣑⡀⠀⠀⢸⠀⠀⣠⣴⣾⣿⠿⠿⠟⢿⣿⣟⣶⣶⣄⢀⡇⠀⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢠⣡⡶⣿⣿⣿⣿⣿⢿⣿⡿⡾⠶⢖⣥⠤⠀⠀⠀⠀⠶⢠⡀⡾⠻⣘⡇⠉⠀⠘⡀⠀⠀⠀⠀⢀⡇⠌⠛⠉⠛⠒⢦⣤⣀⠀⠌⠐⢛⣛⣿⡿⠿⠛⠒⠔⡙⢦⡙⢦⠀⢣⢁⢰⠇⠩⡄⠀⢸⣄⣾⠟⠋⠁⠀⠀⠀⠀⡀⡇⠀⠀⠈⠉⠛⠷⣰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⢃⣿⣱⡿⢿⣻⣯⣿⣿⣾⡴⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⢁⡷⠠⡏⠀⠀⠀⠀⢰⡀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⡿⠟⠁⠀⠀⠀⠀⠀⠈⠐⢽⡿⢧⡀⣾⠀⡞⡄⡙⠀⣿⡿⠵⠖⠿⠿⣟⠿⣶⣶⣬⣕⣢⠀⠀⣀⣤⣶⠞⠂⠂⠄⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⡐⣉⣼⣿⣵⣿⣿⣿⠿⡫⠛⠁⠀⠀⠀⢀⠇⠀⠀⣀⡀⢀⣀⠈⣺⡀⠀⡃⠀⠀⠀⠀⢸⣃⡠⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢯⣞⣹⠀⡧⣏⢣⡼⠋⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠿⠛⢿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠑⠠⡀⠀⠀⠀
⠀⠀⠀⢀⠜⣾⢳⠿⣛⣯⠽⠛⠋⠋⢍⠐⠂⠤⠤⠄⠛⢀⠩⠐⠈⠁⠀⠀⠀⠁⠱⠐⠙⡀⠀⠀⠂⠸⡝⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠣⡞⠀⣿⢫⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⡁⠀⠀⠀⠀⠀⠀⠀⠀⠈⠂⠀⠀
⠀⠀⢀⢂⣤⣧⣿⠟⠉⠀⠀⠀⠀⠀⠀⠡⡀⢀⠂⡡⠐⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢄⣡⠀⠀⠀⢸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢜⣳⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀
⠀⠀⡌⣸⣻⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢁⣜⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣆⠈⡄⠸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣛⠼⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡀⠀⠀⠣⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣘⠼⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠨⡇⠀⠀⠀⠐⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢀⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣧⠀⠀⠀⢢⠈⠂⠠⠤⢀⡀⠀⠀⠀⠀⢀⡀⢲⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢰⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⠂⠂⢀⣀⡈⠐⠒⠒⠂⠠⠵⢦⡡⢌⢢⡼⢻⣿⠙⢶⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⡆⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣎⢂⠀⢀⡉⠉⠛⠛⠂⢀⣀⠈⠽⠛⠣⣄⣼⣿⣆⡼⠛⠛⠓⠢⠤⢐⠠⠀⠀⠀⠀⠀⠀⠀⢀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠅⠈⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⡌⢃⢢⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡏⠙⠓⠠⢈⡋⠍⡉⠉⠀⠀⠀⠀⠀⠀⠸⠛⠛⡏⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⣸⡇⠀⠠⠀⠀⠀⢂⠀⡁⠄⠠⠀⡀⣀⣀⣠⣴⣾⣿⡯⠓⠛⠂⠤⠄⣀⠀⠀⠀⢀⠀⠀⠀
⣿⡆⣽⣤⠀⣀⣀⣆⠰⠀⡰⢀⣀⣆⣤⣿⣇⣸⠘⣟⣳⣦⣤⣤⣤⡄⢦⡄⠀⠀⠀⠀⠀⠀⠀⠘⢇⠀⠀⠀⠈⠙⠃⠿⠆⡄⡀⠀⠀⠀⠀⠀⡇⠀⠃⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠇⠀⠀⢠⠀⠀⠈⠀⠁⠘⠀⠀⠁⠉⠉⠉⠻⣿⣿⠃⠀⠀⠀⠀⠀⠉⠀⠀⠃⠈⠀⠀⠀
⢾⢡⠠⠤⠄⠉⢙⡻⠖⣶⠗⠊⠉⠉⠀⠈⠙⠻⠤⢬⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡘⡀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠇⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢻⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢹⡄⢲⡒⣀⣉⣤⡶⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⣷⣄⠠⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⣀⣼⠀⠀⣵⡈⢀⠐⠀⡀⠄⠀⠀⠀⠀⠀⠀⡀⢀⡎⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠢⣤⠽⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠀⢹⣿⣷⣌⠐⠀⢂⠐⢀⠂⢀⢠⣷⣿⣿⡇⠀⣿⣿⣦⡂⡐⠠⢈⠄⠁⠂⠄⢠⣠⣴⣿⠀⠀⢡⠀⠀⠁⢈⠐⠠⠀⢀⠀⠄⠠⠀⠄⠁⠠⡰⣇⠀⡀⠀⢀⠀⠀⠄⠀⠀⠀⠀⠀⠀⠀⠈
⠀⠀⠀⠀⢡⠀⡀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣏⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⡠⠁⠀⠘⣿⣿⣿⣿⣶⣤⣦⣤⣶⣾⣿⣿⣿⢿⠀⠀⣿⣿⣿⣿⣷⣦⣅⣌⣤⣵⣾⣿⣿⣿⡏⠀⠀⠀⢣⡀⠠⢀⠈⠠⢁⠂⠌⠠⠁⠂⡈⣤⣵⡇⣿⣷⣄⠁⡀⠀⠀⡀⢀⠐⠀⠀⠄⡠⠊⠀
⠀⠀⠀⠀⠀⠡⣀⠂⠌⡐⢀⠀⡀⠀⠀⣀⡠⢔⠕⠁⣼⠑⢤⣈⡀⠄⠐⢀⠈⠀⠀⡀⡴⠊⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡳⠀⠀⠀⠀⠘⣿⣷⣦⣂⠐⡀⠄⠀⣂⠈⢤⣾⣿⣿⣧⣿⣿⣿⣶⡀⢂⠀⠀⡀⣀⣬⣶⡿⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡍⠐⠲⠶⠴⠶⠊⠋⠁⠀⠀⠀⠀⢸⠀⠀⠈⠈⠛⠀⠒⠒⠎⠁⠊⠀⠀⡇⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⣿⣿⣿⣿⣦⣄⠌⡐⢠⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⢈⣤⣴⣿⣿⣿⠁⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢡⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠃⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡈⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣄⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀
]]

logo = string.rep("\n", 8) .. logo .. "\n\n"
return logo