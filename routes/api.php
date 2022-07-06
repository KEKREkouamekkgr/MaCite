<?php

use App\Models\Reservation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\apiController\UserController;
use App\Http\Controllers\apiController\CountApiController;
use App\Http\Controllers\apiController\TypeUserController;
use App\Http\Controllers\MessageOrangeApi\MessageController;
use App\Http\Controllers\apiController\apiAdminController\CategorieController;
use App\Http\Controllers\apiController\apiAdminController\Mapping\MappingController;
use App\Http\Controllers\apiController\apiAdminController\apiGestionDecision\InformationController;
use App\Http\Controllers\apiController\apiAdminController\apiGestionDecision\TypeInformationController;
use App\Http\Controllers\apiController\apiAdminController\Gestion_ServiceAdministratif\ExtraitController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('', function (Request $request) {
    return $request->user();
});

    //gestion de compte
    Route::post('/login', [App\Http\Controllers\apiController\UserController::class,'login']);
    Route::post('/register', [App\Http\Controllers\apiController\UserController::class,'register']);
    Route::put('/update/{id}', [App\Http\Controllers\apiController\UserController::class,'update']);
    Route::delete('/delete/{id}', [App\Http\Controllers\apiController\UserController::class,'destroy']);

    // Gestion de logout
    Route::post('/logout', [App\Http\Controllers\apiController\UserController::class,'logout']);

    //Forgot Password
    Route::post('/forgot', [App\Http\Controllers\apiController\PasswordController::class,'forgot']);
    Route::post('/reset', [App\Http\Controllers\apiController\PasswordController::class,'reset']);
    Route::post('/oldPassword/{userId}', [App\Http\Controllers\apiController\PasswordController::class,'oldPassword']);



    //Liste Des Utilisateurs
    Route::get('/usersCommunes/{commune}', [App\Http\Controllers\apiController\UserController::class,'usersCommunes']);
    Route::get('/userShow/{id}', [App\Http\Controllers\apiController\UserController::class,'userShow']);


    // // Api Decision (Information)
    Route::get('/informationIndex', [App\Http\Controllers\apiController\apiAdminController\apiGestionDecision\InformationController::class,'index']);
    Route::get('/informationShow/{id}/{user}/{tinfo}', [App\Http\Controllers\apiController\apiAdminController\apiGestionDecision\InformationController::class,'show']);
    Route::post('/informationStore/{user}', [App\Http\Controllers\apiController\apiAdminController\apiGestionDecision\InformationController::class,'store']);
    // Route::post('/informationStore', [App\Http\Controllers\apiController\apiAdminController\apiGestionDecision\InformationController::class,'store']);
    Route::put('/informationUpdate/{user}/{infos}', [App\Http\Controllers\apiController\apiAdminController\apiGestionDecision\InformationController::class,'update']);
    Route::delete('/informationdelete/{infos}', [App\Http\Controllers\apiController\apiAdminController\apiGestionDecision\InformationController::class,'destroy']);


    // // Api Decision (TypeInformation)
    Route::get('/typeInformationIndex', [App\Http\Controllers\apiController\apiAdminController\apiGestionDecision\TypeInformationController::class,'index']);
    Route::post('/typeInformationStore', [App\Http\Controllers\apiController\apiAdminController\apiGestionDecision\TypeInformationController::class,'store']);
    Route::put('/typeInformationUpdate/{id}', [App\Http\Controllers\apiController\apiAdminController\apiGestionDecision\TypeInformationController::class,'update']);


    // Api Decision (Preference)
    Route::get('/preferenceIndex', [App\Http\Controllers\apiController\apiAdminController\apiGestionDecision\PreferenceController::class,'index']);
    Route::post('/preferenceStore', [App\Http\Controllers\apiController\apiAdminController\apiGestionDecision\PreferenceController::class,'store']);
    Route::post('/preferenceUpdate/{id}', [App\Http\Controllers\apiController\apiAdminController\apiGestionDecision\PreferenceController::class,'update']);

    //API Collecte
    Route::get('/collecteIndex', [App\Http\Controllers\apiController\apiAdminController\Gestion_Collecte\CollecteController::class,'index']);
    Route::post('/collecteStore', [App\Http\Controllers\apiController\apiAdminController\Gestion_Collecte\CollecteController::class,'Store']);

    //DyDja
    Route::get('/list-projectIndex/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Projet\ProjetAdminController::class,'index']);
    Route::get('/list-projectShow/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Projet\ProjetAdminController::class,'show']);
    Route::post('/create-projectStore',[App\Http\Controllers\apiController\apiAdminController\Gestion_Projet\ProjetAdminController::class,'store']);
    Route::put('/projectUpdate/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Projet\ProjetAdminController::class,'update']);
    Route::delete('/delete-projectDelete/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Projet\ProjetAdminController::class,'destroy']);


    /**
    * ROUTE IDEE FOR USER AND ADMIN
    */

    Route::get('/list-ideeIndex',[App\Http\Controllers\apiController\apiAdminController\Gestion_Projet\IdeeAdminController::class,'index']);
    Route::post('/create-ideeStore',[App\Http\Controllers\apiController\apiAdminController\Gestion_Projet\IdeeAdminController::class,'store']);
    Route::get('/list-ideeShow/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Projet\IdeeAdminController::class,'show']);
    Route::put('/ideeUpdate/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Projet\IdeeAdminController::class,'update']);
    Route::delete('/ideeDestroy/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Projet\IdeeAdminController::class,'destroy']);
    //Api pour le listing des propositions d'idée supprimé
    Route::get('/delete-idee',[App\Http\Controllers\apiController\apiAdminController\Gestion_Projet\IdeeAdminController::class,'ideeDelete']);


    //ROUTE POUR LE PROBLEME
    Route::post('/create-problemeStore/{user}/{idtypeprobleme}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Projet\ProblemeController::class,'store']);
    Route::get('/list-problemeIndex',[App\Http\Controllers\apiController\apiAdminController\Gestion_Projet\ProblemeController::class,'index']);
    Route::get('/list-problemeIndexHistorique/{user}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Projet\ProblemeController::class,'indexHistorique']);
    Route::get('/list-problemeShow/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Projet\ProblemeController::class,'Show']);
    //Fin DyDja


    //Celestin
    //API Sondage
    Route::get('/sondageIndex',[App\Http\Controllers\apiController\apiAdminController\Gestion_Sondage\SondageController::class,'index']);

    Route::get('/sondageIdSondage/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Sondage\SondageController::class,'idSonge']);
    Route::post('/sondageStore',[App\Http\Controllers\apiController\apiAdminController\Gestion_Sondage\SondageController::class,'store']);
    Route::get('/sondageShow/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Sondage\SondageController::class,'show']);
    Route::put('/sondageUpdate/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Sondage\SondageController::class,'Update']);
    Route::delete('/sondageDelete/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Sondage\SondageController::class,'destroy']);


    // //API Options
    Route::get('/optionIndex',[App\Http\Controllers\apiController\apiAdminController\Gestion_Sondage\OptionController::class,'index']);
    Route::post('/optionStore',[App\Http\Controllers\apiController\apiAdminController\Gestion_Sondage\OptionController::class,'store']);
    Route::get('/optionShow/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Sondage\OptionController::class,'show']);
    Route::put('/optionUpdate/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Sondage\OptionController::class,'Update']);
    Route::delete('/optionDelete/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Sondage\OptionController::class,'destroy']);
    //Fin CelesTin


    /* Table MLD */

    //commenatire
    Route::get('/commenterIndex',[App\Http\Controllers\apiController\apiAdminController\Gestion_Mld\CommenterController::class,'index']);
    Route::post('/commenterStore',[App\Http\Controllers\apiController\apiAdminController\Gestion_Mld\CommenterController::class,'store']);
    Route::put('/commenterUpdate/{id}/{user}/{proposidee}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Mld\CommenterController::class,'Update']);
    Route::delete('/commenterDelete/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Mld\CommenterController::class,'destroy']);

    //Liker
    Route::post('/likerStore/{user}/{proposidee}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Mld\LikerController::class,'store']);
    Route::put('/likerUpdate/{id}/{user}/{proposidee}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Mld\LikerController::class,'Update']);

    //Signaler
    Route::post('/SignalerStore/{user}/{proposidee}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Mld\SignalerController::class,'store']);
    Route::put('/SignalerUpdate/{id}/{user}/{proposidee}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Mld\SignalerController::class,'Update']);


    //Vote
    Route::get('/voteIndex',[App\Http\Controllers\apiController\apiAdminController\Gestion_Mld\VoteController::class,'index']);
    Route::post('/voteStore',[App\Http\Controllers\apiController\apiAdminController\Gestion_Mld\VoteController::class,'store']);
    Route::get('/voteShow/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Mld\VoteController::class,'show']);


    //RolePermission
    Route::get('/rolePermissionIndex',[App\Http\Controllers\apiController\apiAdminController\Gestion_Mld\RolePermissionController::class,'index']);
    Route::get('/rolePermissionShow/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Mld\RolePermissionController::class,'show']);


    //Services Administratifs

    //Extrait de Naissance
    Route::get('/ExtNaisIndex',[ExtraitController::class,'index']);
    Route::get('/ExtNaisShow/{id}',[ExtraitController::class,'show']);
    Route::post('/ExtNaisStore/',[ExtraitController::class,'store']);
    Route::put('/ExtNaisUpdated/{user}',[ExtraitController::class,'updated']);


    //TypeService
    Route::get('/typServiceIndex',[App\Http\Controllers\apiController\apiAdminController\Gestion_ServiceAdministratif\TypeServiceController::class,'index']);
    Route::post('/typeServiceStore',[App\Http\Controllers\apiController\apiAdminController\Gestion_ServiceAdministratif\TypeServiceController::class,'store']);
    Route::get('/typServiceShow/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_ServiceAdministratif\TypeServiceController::class,'show']);
    Route::put('/typServiceUpdate/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_ServiceAdministratif\TypeServiceController::class,'Update']);
    Route::delete('/typServiceDelete/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_ServiceAdministratif\TypeServiceController::class,'destroy']);


    //Paiement
    Route::get('/paiementIndex',[App\Http\Controllers\apiController\apiAdminController\PaiementController::class,'index']);
    Route::post('/paiementStore',[App\Http\Controllers\apiController\apiAdminController\PaiementController::class,'store']);


    //Commmunes
    Route::get('/communeIndex',[App\Http\Controllers\apiController\apiAdminController\Gestion_Commune\CommuneController::class,'index']);
    Route::post('/communeStore',[App\Http\Controllers\apiController\apiAdminController\Gestion_Commune\CommuneController::class,'store']);
    Route::get('/communeShow/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Commune\CommuneController::class,'show']);
    Route::put('/communeUpdate/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Commune\CommuneController::class,'Update']);
    Route::delete('/communeDelete/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_Commune\CommuneController::class,'destroy']);

    //TypeUtilisateurs
    Route::get('/typUserIndex',[App\Http\Controllers\apiController\TypeUserController::class,'index']);
    Route::post('/typUserStore',[App\Http\Controllers\apiController\TypeUserController::class,'store']);
    Route::get('/typUserShow/{id}',[App\Http\Controllers\apiController\TypeUserController::class,'show']);
    Route::put('/typUserUpdate/{id}',[App\Http\Controllers\apiController\TypeUserController::class,'Update']);
    Route::delete('/typUserDelete/{id}',[App\Http\Controllers\apiController\TypeUserController::class,'destroy']);

    //LIste des Agents de Chaque communes
    Route::get('/userAgentIndex/{id}',[App\Http\Controllers\apiController\TypeUserController::class,'userAgent']);
    // Route::get('/userAdminIndex/{id}',[App\Http\Controllers\apiController\TypeUserController::class,'userAdmin']);
    Route::get('/userAdminIndex',[App\Http\Controllers\apiController\TypeUserController::class,'userAdmin']);

    //Type Probleme
    Route::get('/typeProblemeIndex',[App\Http\Controllers\apiController\apiAdminController\Gestion_TypeProbleme\TypeProblemeController::class,'index']);
    Route::post('/typeProblemeStore',[App\Http\Controllers\apiController\apiAdminController\Gestion_TypeProbleme\TypeProblemeController::class,'store']);
    Route::get('/typeProblemeShow/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_TypeProbleme\TypeProblemeController::class,'show']);
    Route::put('/typeProblemeUpdate/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_TypeProbleme\TypeProblemeController::class,'Update']);
    Route::delete('/typeProblemeDelete/{id}',[App\Http\Controllers\apiController\apiAdminController\Gestion_TypeProbleme\TypeProblemeController::class,'destroy']);

    //Api Count Controller
    Route::get('/usersCommuneCount/{users}',[App\Http\Controllers\apiController\CountApiController::class,'usersCommunes']);
    Route::get('/projetsCommuneCount',[App\Http\Controllers\apiController\CountApiController::class,'projetsCommunes']);
    Route::get('/informationsCommuneCount/{commune}',[App\Http\Controllers\apiController\CountApiController::class,'informationsCommunes']);

    //Api de Reservation
    Route::get('/reserIndex',[App\Http\Controllers\apiController\apiAdminController\ReservationController::class,'index']);
    Route::post('/reserPost/{users}/{idPaiement}',[App\Http\Controllers\apiController\apiAdminController\ReservationController::class,'store']);


    /* ParkTypeProbleme */

    //Parkings
    //Api de Reservation
    // Route::get('/parkingIndex',[App\Http\Controllers\apiController\apiAdminController\Parking\ParkingController::class,'index']);
    // Route::post('/parkingStore',[App\Http\Controllers\apiController\apiAdminController\Parking\ParkingController::class,'store']);
    // Route::get('/parkingShow/{id}',[App\Http\Controllers\apiController\apiAdminController\Parking\ParkingController::class,'show']);
    // Route::put('/parkingUpdate/{id}',[App\Http\Controllers\apiController\apiAdminController\Parking\ParkingController::class,'update']);
    // Route::delete('/parkingDelete/{id}',[App\Http\Controllers\apiController\apiAdminController\Parking\ParkingController::class,'destroy']);

    //API DASHBOARD
    Route::get('/totalProbleme/{IdCommune}',[App\Http\Controllers\apiController\CountApiController::class,'totalProbleme']);
    Route::get('/totalSondage/{IdCommune}',[App\Http\Controllers\apiController\CountApiController::class,'totalSondage']);
    Route::get('/totalCollecte/{IdCommune}',[App\Http\Controllers\apiController\CountApiController::class,'totalCollecte']);
    Route::get('/totalProjet/{IdCommune}',[App\Http\Controllers\apiController\CountApiController::class,'totalProjet']);
    Route::get('/values/{IdCommune}',[App\Http\Controllers\apiController\CountApiController::class,'piechart']);


    //Api de Mapping
    Route::get('/mappingIndex',[MappingController::class,'index']);
    Route::post('/mappingStore',[MappingController::class,'store']);
    Route::get('/mappingShow/{id}',[MappingController::class,'show']);
    Route::put('/mappingUpdate/{id}',[MappingController::class,'update']);
    Route::delete('/mappingUpdate/{id}',[MappingController::class,'destroy']);


    //API de Categorie
     Route::get('/catIndex',[CategorieController::class,'index']);
     Route::post('/catStore',[CategorieController::class,'store']);
     Route::get('/catShow/{id}',[CategorieController::class,'show']);
     Route::put('/catUpdate/{id}',[CategorieController::class,'update']);
     Route::delete('/catDelete/{id}',[CategorieController::class,'destroy']);


     /********* ENVOIE SMS ****************/
    Route::post('messageApiOrange',[MessageController::class,'send']);













