<?php
require_once 'connect.php';
?>
<!DOCTYPE html>
<html lang="en, ru">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Make your PC</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/more.js"></script>

</head>
<body>
<div class="container">
    <div class="row">
        <div class="tm-left-right-container">
            <!-- Left column: logo and menu -->
            <div class="tm-blue-bg tm-left-column">
                <div class="tm-logo-div text-xs-center">
                    <img src="img/logo1.png" alt="Logo">
                    <h1 class="tm-site-name">PC Maker</h1>
                </div>
                <nav class="tm-main-nav">
                    <ul class="tm-main-nav-ul">
                        <li class="tm-nav-item">
                            <a href="#welcome" class="tm-nav-item-link">Добро пожаловать</a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="#pc-maker" class="tm-nav-item-link">О сборке ПК</a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="#situate" class="tm-nav-item-link">Соберите свой ПК</a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="#price" class="tm-nav-item-link">ID Вашего заказа</a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="#core" class="tm-nav-item-link">Последние сборки</a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="#contact" class="tm-nav-item-link">Отправка заявки</a>
                        </li>
                    </ul>
                </nav>
            </div> <!-- Left column: logo and menu -->

            <!-- Right column: content -->
            <div class="tm-right-column">
                <figure>
                    <img alt="Header image" class="img-fluid" src="img/pc01.jpg">
                </figure>

                <div class="tm-content-div">
                    <!-- Welcome section -->
                    <section id="welcome" class="tm-section">
                        <header>
                            <h2 class="tm-blue-text tm-welcome-title tm-margin-b-45">Добро пожаловать в PC-Maker</h2>
                        </header>
                        <div class="col-lg-3 col-md-5 tm-about-img-container">
                            <img src="img/pc03.jpg" alt="Image" class="img-fluid">
                        </div>

                        <p>PC-Maker это компания, которая позволит тебе собрать свой собственный компьютер с теми комплектующими которые тебе нужны. Вы сможете собрать свой PC используя нашу обширную базу данных. Наши эксперты, специально для вас, сделали так, чтобы вы не смогли ошибиться при оформлении своего заказа. Однако, если вы хотите чтобы ваш выбор олицетворял все ваши потребности, заранее ознакомьтесь с характеристиками и отзывами о тех или иных комплектующих. Это как убережет вас от сбокри пк, который не будет выполнять постевленой задачи, так и сэкономит ваши средства.</p>
                    </section>

                    <section id="pc-maker" class="tm-section">
                        <header>
                            <br>
                            <br>
                            <h2 class="tm-blue-text tm-section-title tm-margin-b-30" style= "margin-top=300px">О сборке ПК</h2>
                        </header>
                        <p>При сборке ПК следует учитывать для каких целей вам он нужен. Ведь в зависимости от этого вы либо будете доплачивать за коплектующие, либо сэкономите на них.</p>
                        <p>Конечно же вы всегда можете собрать самый мощный компьютер, если конечно у вас бездонный кошелек. Но зачем переплачивать за ПК и брать все самое мощное и дорогое, если по итогу он не будет использовать 70% + мощности? Зачем вам тратить сотни тысяч леев на пк, если на нем вы собираетесь всеголишь смотреть фильмы, да играть в "косынку"? Именно для тех, кто знает что ему нужно и хочет наиболее рационально распорядиться своими деньгами и предназначен наш сайт<span id="dots">...</span><span id="more">
                                После того как вы определились целью, для которой вы собираете собственный ПК вы можете начать собирать его. Первым делом, вы должны выбрать "Сердце" вашего компьютера. Для этого вам надо подобрать Процессор и Видеокарту. Следует учитывать, что по цене Видеокарта не редко занимает более 40% стоимости всего ПК. Чтобы сэкономить, если вы собираетесь только смотреть фильмы, и серфить в интернете, вы можете собрать себе компьютер без видеокарты. Встроенного в процессор видео ядра вам вполне хватит для этих целей, к тому же, вы всегда сможете её докупить позже при надобности.
                                Тоже самое относится для тех, кто собирает пк для работы с Графикой или для Игр. Вы не сможете обойтись без видеокарты, однако вы можете сэкономить на процессоре, добавив в вашу сборку процессор без Видео-ядра. Это никак не повлияет на производительность, однако уменьшит итоговую цену в среднем на 700 леев.
                                </span></p>
                        <button id="btn"
                                onclick="readMore()">Подробнее</button>
                    </section>



                    <section id="situate" class="tm-section">
                        <header>
                            <h2 class="tm-blue-text tm-section-title tm-margin-b-30">Соберите свой ПК</h2>
                        </header>
                        <form id="pc" action="create_ord.php" method="POST">
                            <table class="table" >
                            <tr>
                                <th scope="col">Процессор</th>
                                <th scope="col">Видеокарта</th>
                                <th scope="col">Материнская плата</th>
                                <th scope="col">Куллер</th>
                                <th scope="col">Корпус</th>
                                <th scope="col">Блок питания</th>
                                <th scope="col">ОЗУ</th>
                                <th scope="col">Накопитель</th>
                            </tr>
                            <tr>
                                <td>
                                    <div>
                                        <select name="scpu" form="pc">
                                        <?php
                                        $cpu = mysqli_query($connect, "SELECT cpu.model FROM `cpu`");
                                        $scpu = mysqli_fetch_all($cpu);
                                        ?>
                                        <?php foreach ($cpu as $scpu): ?>
                                            <option value="<?=$scpu['model'];?>"><?=$scpu['model'];?></option>
                                        <?php endforeach; ?>
                                        </select>
                                     </div>
                                </td><!--cpu.model-->
                                <td>
                                    <div>
                                        <select name="sgpu" form="pc">
                                            <?php
                                            $gpu = mysqli_query($connect, "SELECT * FROM `gpu`");
                                            ?>
                                            <?php foreach ($gpu as $sgpu): ?>
                                                <option value="<?=$sgpu['graphic_chip'];?>"><?=$sgpu['graphic_chip'];?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </td><!--gpu.graphic_chip-->
                                <td>
                                    <div>
                                        <select name="sboard" form="pc">
                                            <?php
                                            $motherboard = mysqli_query($connect, "SELECT * FROM `motherboard`");
                                            ?>
                                            <?php foreach ($motherboard as $sboard): ?>
                                                <option value="<?=$sboard['model'];?>"><?=$sboard['model'];?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </td><!--motherboard.model-->
                                <td>
                                    <div>
                                        <select name="scool" form="pc">
                                            <?php
                                            $cooler = mysqli_query($connect, "SELECT * FROM `cooler`");
                                            ?>
                                            <?php foreach ($cooler as $scool): ?>
                                                <option value="<?=$scool['model'];?>"><?=$scool['model'];?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </td><!--cooler.model-->
                                <td>
                                    <div>
                                        <select name="scase" form="pc">
                                            <?php
                                            $pc_case = mysqli_query($connect, "SELECT * FROM `pc_case`");
                                            ?>
                                            <?php foreach ($pc_case as $scase): ?>
                                                <option value="<?=$scase['model'];?>"><?=$scase['model'];?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </td><!--pc_case.model-->
                                <td>
                                    <div>
                                        <select name="spower" form="pc">
                                            <?php
                                            $power_supply = mysqli_query($connect, "SELECT * FROM `power_supply`");
                                            ?>
                                            <?php foreach ($power_supply as $spower): ?>
                                                <option value="<?=$spower['model'];?>"><?=$spower['model'];?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </td><!--power_supply.model-->
                                <td>
                                    <div>
                                        <select name="sram" form="pc">
                                            <?php
                                            $ram = mysqli_query($connect, "SELECT * FROM `ram`");
                                            ?>
                                            <?php foreach ($ram as $sram): ?>
                                                <option value="<?=$sram['memory_size'];?>"><?=$sram['memory_size'];?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </td><!--ram.memory_size-->
                                <td>
                                    <div>
                                        <select name="ssd" form="pc">
                                            <?php
                                            $storage_device = mysqli_query($connect, "SELECT * FROM `storage_device`");
                                            $ssd = mysqli_fetch_all($storage_device);
                                            ?>
                                            <?php foreach ($storage_device as $ssd): ?>
                                                <option value="<?=$ssd['storage_device_fullname'];?>"><?=$ssd['storage_device_fullname'];?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </td><!--storage_device.storage_device_fullname-->
                            </tr>
                        </table>
                            <button type="submit" form="pc">Проверить</button>
                </form>
                        <!-- --------------------------------------------------------------------------------- -->

                        <!-- --------------------------------------------------------------------------------- -->
                    </section>

                    <section id="price" class="tm-section">
                        <header>
                            <h2 class="tm-blue-text tm-section-title tm-margin-b-30">ID Вашего заказа</h2>
                        </header>

                        <table >
                            <?php
                            $id_ord = mysqli_query($connect, "SELECT id FROM `createt` ORDER BY id DESC LIMIT 1");
                            $id_ord = mysqli_fetch_all($id_ord);?>
                            <?php foreach ($id_ord as $idord) :?>
                            <tr width="500px">
                                <th >ID Заказа </th>
                                <th>-<?=$idord[0]?></th>
                            </tr>
                            <?php
                                // $price = mysqli_query($connect, "SELECT SUM(t.Qty) AS total_qty FROM (SELECT Qty FROM MC UNION ALL SELECT Qty FROM Amex) t");
                                ?>
                                <tr>
                                    <th></th>
                                    <th></th>
                                </tr>

                            <?php endforeach;?>
                        </table>

                    </section>

                    <section id="core" class="tm-section">
                        <header><h2 class="tm-blue-text tm-section-title tm-margin-b-30">Последние сборки</h2></header>
                            <div class="col-lg-6">

                            <div class="card bg-light mb-3" style="max-width: 18rem; display: inline-block; margin-left: 25px;">
                                <?php
                                $pc = mysqli_query($connect, "SELECT * FROM `createt` ORDER BY id DESC LIMIT 1");
                                $pc = mysqli_fetch_all($pc);
                                ?>
                                <?php foreach ($pc as $orpc): ?>
                                <div class="card-header">ID <?=$orpc[0]?></div>
                                <div class="card-body" style = "padding-left: 30px;">



                                    <table>
                                       <tr>
                                           <td><?=$orpc[1]?></td>
                                       </tr>
                                        <tr>
                                            <td><?=$orpc[2]?></td>
                                        </tr>
                                        <tr>
                                            <td><?=$orpc[3]?></td>
                                        </tr>
                                        <tr>
                                            <td><?=$orpc[4]?></td>
                                        </tr>
                                        <tr>
                                            <td><?=$orpc[5]?></td>
                                        </tr>
                                        <tr>
                                            <td><?=$orpc[6]?> Gb</td>
                                        </tr>
                                        <tr>
                                            <td><?=$orpc[7]?></td>
                                        </tr>
                                        <tr>
                                            <td><?=$orpc[8]?></td>
                                        </tr>
                                        <?php endforeach; ?>
                                    </table>

                                </div>
                            </div>
                                <div class="card bg-light mb-3" style="max-width: 18rem; display: inline-block; margin-left: 25px; ">
                                    <?php
                                    $pc = mysqli_query($connect, "SELECT * FROM `createt` ORDER BY id DESC LIMIT 1 OFFSET 1");
                                    $pc = mysqli_fetch_all($pc);
                                    ?>
                                    <?php foreach ($pc as $orpc): ?>
                                    <div class="card-header">ID <?=$orpc[0]?></div>
                                    <div class="card-body" style = "padding-left: 30px;">



                                        <table>
                                            <tr>
                                                <td><?=$orpc[1]?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$orpc[2]?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$orpc[3]?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$orpc[4]?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$orpc[5]?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$orpc[6]?> Gb</td>
                                            </tr>
                                            <tr>
                                                <td><?=$orpc[7]?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$orpc[8]?></td>
                                            </tr>
                                            <?php endforeach; ?>
                                        </table>

                                    </div>
                                </div>
                                <div class="card bg-light mb-3" style="max-width: 18rem; display: inline-block; margin-left: 25px;">
                                    <?php
                                    $pc = mysqli_query($connect, "SELECT MAX(id-2), cpu, cooler, board, gpu, pccase, ram, powers, sd FROM `createt` ORDER BY id DESC LIMIT 1");
                                    $pc = mysqli_fetch_all($pc);
                                    ?>
                                    <?php foreach ($pc as $orpc): ?>
                                    <div class="card-header">ID <?=$orpc[0]?></div>
                                    <div class="card-body" style = "padding-left: 30px;">



                                        <table>
                                            <tr>
                                                <td><?=$orpc[1]?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$orpc[2]?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$orpc[3]?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$orpc[4]?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$orpc[5]?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$orpc[6]?> Gb</td>
                                            </tr>
                                            <tr>
                                                <td><?=$orpc[7]?></td>
                                            </tr>
                                            <tr>
                                                <td><?=$orpc[8]?></td>
                                            </tr>
                                            <?php endforeach; ?>
                                        </table>

                                    </div>
                                </div>
                        </div>
                    </section>


                    <section class="tm-section" id="contact" style="margin-top: 800px">
                        <header><h2 class="tm-blue-text tm-section-title tm-margin-b-30">Свяжитесь с нами</h2></header>

                        <div class="row">
                            <div class="col-lg-6">
                                <form action="order_form.php" method="POST" class="contact-form">
                                    <div class="form-group">
                                        <input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="Name"  required/>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" id="contact_phone" name="contact_phone" class="form-control" placeholder="Phone"  required/>
                                    </div>
                                    <div class="form-group">
                                        <textarea id="contact_message" name="contact_message" class="form-control" rows="9" placeholder="Message" required></textarea>
                                    </div>
                                    <div class="id">
                                        <input type="number" id="id" name="id" class="form-control" placeholder="ID"  required/>
                                    </div>
                                    <button type="submit" class="float-right tm-button">Отправить</button>
                                </form>
                            </div>

                            <div class="col-lg-6 tm-contact-right">
                                <p>
                                    После заполнения заявки пожалуйста, дождитесь звонка нашего консультанта. Он позвонит в течении 1 часа, если заявка была подана в рабочее время
                                </p>
                                <address>
                                    Если же  заявка подана вне рабочего времени, с вами свяжутся позже
                                </address>
                            </div>
                        </div>

                    </section>
                    <footer>
                        <p class="tm-copyright-p">Copyright &copy; 2023 PC-Maker

                            | Designed by <a href="https://www.linkedin.com/in/nikolay-gheorghiev-398451292/" target="_parent">Nicolai Gheorghiev</a></p>
                    </footer>
                </div>

            </div>
        </div>
    </div>
</div>


</body>
</html>