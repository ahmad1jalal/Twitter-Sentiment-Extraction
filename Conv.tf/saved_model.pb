??
?)?)
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.9.22unknown8??
?
RMSprop/dense_10/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/dense_10/bias/rms
?
-RMSprop/dense_10/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_10/bias/rms*
_output_shapes
:*
dtype0
?
RMSprop/dense_10/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_nameRMSprop/dense_10/kernel/rms
?
/RMSprop/dense_10/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_10/kernel/rms*
_output_shapes

: *
dtype0
?
RMSprop/conv1d/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameRMSprop/conv1d/bias/rms

+RMSprop/conv1d/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv1d/bias/rms*
_output_shapes
: *
dtype0
?
RMSprop/conv1d/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:? **
shared_nameRMSprop/conv1d/kernel/rms
?
-RMSprop/conv1d/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv1d/kernel/rms*#
_output_shapes
:? *
dtype0
?
 RMSprop/embedding/embeddings/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?u?*1
shared_name" RMSprop/embedding/embeddings/rms
?
4RMSprop/embedding/embeddings/rms/Read/ReadVariableOpReadVariableOp RMSprop/embedding/embeddings/rms* 
_output_shapes
:
?u?*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	
l

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name1858*
value_dtype0	
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:*
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

: *
dtype0
n
conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d/bias
g
conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
_output_shapes
: *
dtype0
{
conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:? *
shared_nameconv1d/kernel
t
!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*#
_output_shapes
:? *
dtype0
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?u?*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
?u?*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??
Const_4Const*
_output_shapes	
:?u*
dtype0*??
value??B???uBiBtoBtheBaBmyBandByouBitBisBinBforBofBimBonBmeBhaveBsoBthatBbutBjustBwithBdayBbeBitsBatBnotBwasBallBthisBgoodBnowBoutBupBgetBareBnoBlikeBgoBdontByourBdoBloveBworkBtooBtodayBgoingBgotBcantBfromBhappyBoneBlolBamBtimeBuBknowBwhatBreallyBwillBbackBaboutBweBhadBthereBseeBcanBsomeBifBwellBnightBnewBhomeBmothersBwantBthinkBasBmoreBstillBwhenBhowBohBmuchBthanksBtheyBoffBhereBmissBanBgreatBhasBhopeBlastBneedBmorningBhahaBthatsBherBbeenBillBfunBfeelBthenBorBwouldBtwitterBwishBtomorrowBwhyBonlyBheBagainBsorryBsadBbadBdidntBtonightBrightBwereBmakeBbyBveryBgonnaBdidBniceByeahBthemBweekBbetterBthoughBsheBsleepBwayBcomeBiveBoverBcouldBshouldBweekendBgettingBbedBpeopleBnextByoureBwatchingBhttptwitpiccomBafterBdaysBwaitBhateBschoolBawesomeBsayBhimBbestBthingBhavingBlongBevenBdownBlittleBheyBsoonBneverBwontBbeingByesBshowBanyBworkingBthankBokBwhoBhisBsureBtakeBmomBdoneBcoolBbecauseBfirstBdoingBtiredBlookBthanBmayBfriendsBfeelingBusBeveryoneBourBanotherBxBalwaysBsickBpleaseBwannaBurBlifeBhoursBguysBdoesntBalreadyBmovieBmanBphoneBeverBwhereB	somethingBhouseBbeforeBwatchBfindBtryingBoldBmadeBreadyByetBfinallyBwentBfridayByayBprettyBsameBgirlBthoughtBintoBlookingBleftBsucksBawayBlooksBmaybeBfollowBbigBguessByearBliveBbitBletBamazingBalsoBthoseBmissedBwowBomgBotherBstarBsomeoneBfriendBwhileBtwoBthingsBkeepBsaidBmondayBughBthBsawBtryBactuallyBnothingBhearBhotBstartBnBjobBhardBuntilBearlyBtweetBworldBsuchBlaterBgladBboredBgoneBhesBcheckByaBwBtellBplayBhaventBbirthdayBsongBcallBidBcarBsinceBrainBisntBhiBtillBmakesBlateBbabyBaroundB	yesterdayBlotBlostBcomingBanythingBreadBhelpBsunBstuffBexcitedBheadBfewBweatherBwaitingBpoorBgottaBfoundBputBtalkBmyselfBpartyBmustBmomsBgiveBmusicBhairBfamilyBdoesBbBawwBalmostBmakingBcauseBmightBsummerBsBmostBmanyBgodBwasntBmeanBenjoyBdBleaveBleastBhurtsBthoBmoneyBmissingBlunchBcoffeeBbelieveBstopBforwardBfarBcoldBwhatsBanyoneBtheirB	listeningBfunnyBgameBwelcomeBthinkingB
everythingBendBthroughBsundayBstupidBshesBeatBwithoutBtimesBsoundsBluckBwantedBuseBcuteBdinnerB	beautifulBwhichBtotallyBrBplayingBfinishedBprobablyBmineBtheresB	followersBwantsBeveryBenoughBcouldntBwokeBweeksBhourBtheseBkidsBbuyBwholeBsweetBplaceBfreeBfoodBseenBokayBhellBeatingBtookBbothBpicBoutsideBhaBlovelyBsaysBsoooBkindaByearsBrealBhahahaB	goodnightBawwwBtvBofficeBbookBanymoreBsuperBroomB	followingBclassBagoBstuckBtakingBlovedBfullBcameBoBelseBwrongBstayBnameBmeetBhitBhelloBheadacheBsaturdayB	hopefullyBforgotBbusyBbooBvideoBseemsBgetsBusedBgirlsBdudeBwarsBsittingBkindBideaBguyBtheyreBshoppingBonlineBlotsBableBownBinternetBdadBbrokeBtweetsBpBminutesBcrazyBquiteBonceBholidayBbreakBwinBtripBtalkingBseeingBmumBeitherBcryBpartBmindBrunBrememberBpostBnewsBinsteadBfaceBdogBawakeBtrekBrestBiphoneBcuzBchangeBcalledBaloneBpmBeveningBfeelsB	wonderfulBwatchedBtriedBstartingBonesBniteBhurtBbtwBahBsendBrunningBpersonBhalfBdrinkBbankBtilBheardBfacebookBcomputerBstBsooBpictureBgoesBconcertBwritingBtoldBletsBdeadBtrueBluckyBlovesB	breakfastBblogBaskBperfectBneedsBmonthBheheBfineBfailBmoveBlilBfanBdriveBcloseBboyBsleepingBsiteB
httpblipfmBawByeaBturnBstartedB	sometimesBpainBiceBhopingBhighBboughtByoutubeBrainingBmomentBlmaoBlaBkBfavoriteBemailBcBbeachBsooooBmonthsBmommyBhungryBcoupleByallBmotherBheadingBhappenedBgoinBexamBproblemBopenBbdayBwakeBticketsBsupposedBsetBheartBtestBsuckBshowerBmoviesBleavingBjuneB
definitelyBcatchBboringBvoteBteaBsoreBlinkBhappenBanywayByoullBtopBrockBreadingBcomesBaccountBsighBhangBgaveBeyesBarentBaintBseasonBsayingBreasonBpicturesBdreamBdearBcourseBcityBcatBasleepBndBmeansBmBlistBlessB	chocolateBcareBboutBwriteBwishingBsunnyBspendBsongsBshortBredBphotoBpastBfluBfbBcleaningBwouldntBspecialBsadlyBpicsBjonasBinterestingBfinalBdueBdrinkingByepBusingBtourBtogetherBmovingBmeetingBlBhugsBfastBxdBknewBforgetBfairBbringBwaterBtextBsoundBsecondBreplyBpplBdateBcardBboysBworthBukBseemBmadBlondonBjealousBipodBcreamB	afternoonByBunfortunatelyBunderB	seriouslyBnopeBfellBepisodeBdrivingBcutBchanceBtownBthreeBspentBparkBnapBlikedBexamsBdiedBcongratsBcakeBbyeBbrokenByouveBwalkBpointBplansBlearnBfinishBahhBwtfBwarmBratherBpsBmoodBlistenBjBgoogleBenjoyingB	differentBaddBweirdBweddingBslowBsaveBphotosBmeantBlaptopBgardenB	everybodyBenglishBsisterBplusBbrothersBalbumBworstBworryBworksBstoreBsideBshowsBrideBpizzaBpageBlookedBhugeBfallBemBsentBneededBmessageBgymBearlierBeBduringBdaBcleanBbusBblackBbgtBbetBbabeBagreeBwindowsBwhiteBupsetBtweetingBsleptBsatBmrBlivingBladyBkidBhorribleBgBfigureBeachByumBwordBwishesBsunshineBshameBplayedBnearB	httpbitlyBfactBexceptBeasyBcameraBbeerB
apparentlyB
absolutelyByoursBwordsB
understandBstoryBohhBhangingBfB
especiallyBdrunkBbusinessBbrotherByummyBvisitBvBupdateBthroatBstudyBstartsBpickBparentsBhowsBfansBblessBbehindBateBanswerB	wonderingBwonBtrafficBthxBsmileBmiddleBlongerB	fantasticBdreamsBdieBcosBcollegeBahhhBwearBupdatesBrelaxingBnumberBlovingBinsideBidkBhugBhmmBhandBdangBcryingBcheeseBalongBï½BworseBwineBteamBtBsignBshoesBranBprojectBplanBminsBlonelyBitllBhappensBdanceBcompanyBclubBblueBbikeBbcBzBthinksBsonBsnlBsmallBradioBpromBouchB
officiallyBmumsBlineBhunBgreenB
graduationBgiftBforeverBfingersBfeetBchatBcannotBairBworkedBviaBstomachBsoldBsafeBnightsBmacBluvBlazyBjoinBhuhBhatesBcupBchickenBwonderBswineBshopBrevisionBpoolBnoneBlameBjohnBhrsBguttedBguitarBexcitingBexactlyBcommentBbandBappleByrBwooBversionBshallBrealizedBquickBpassBpackingBminBmilesBkeepsBhubbyBhospitalBetcBdecidedBclothesBchillinB	boyfriendB
appreciateBappByourselfBwifeBwebBtrainBtakenBsleepyBshirtBripBrainyBproblemsBothersBmovedBmessagesBlowBhomeworkBhahahBflyBflightB
completelyBchurchBbodyBbbqBalthoughBwhateverBvegasBtomBtakesBsingBshareBscreenBpostedBmoonBfrenchBfixBfeltBdvdBdmBclosedBusuallyBsupportBstudyingBstoppedB	somewhereBsingleBsendingBquietBpaperBmetBmenBmatterBmathBmamaBlegsBdressBdarkBcaseBalotBxoxoBwearingBwalkingBvideosBtummyBtuesdayBstayingB	starbucksBsingingBoohBjustinBhannahBgroupBfrontBfilmBdogsBdealBdavidBbummedBalrightByoBwakingBtwilightBthursdayBsitBsexyBserviceBroundBpublicBproudBindeedBgoodbyeBfollowedBextraBcheckedBbroBbeatBwheresBwebsiteBrandomBpowerBnycBnoteBmyspaceBmateBkillBjusBjulyBimaBgorgeousBgivingBgamesBcozBcountBcdBbloodyBbecomeBairportB	wolverineBtoniteBtalentBshotBscaredBrdBquestionBpayBpaidBmobileBmachineBhttpplurkcompxBhBgettinBfeelinBfamBfailedBenjoyedBdisappointedBcopyBcongratulationsBchangedBcaughtBcallingBbooksBbetweenBannoyingByoungBvoiceBticketBtaylorBscaryBraceBprobBpcBminuteBmilkBmentionBiï½mBitunesBfollowerBffBfavBendedBehBdoorBdadsB	currentlyBclassesBcatsBbloodBawfulBanytimeBagesB	wednesdayBvacationBtouchBstandBspendingBshutBpuppyBplanningBmaBloadBlatelyBkilledBjonB	interviewBimagineBholdBhistoryB	hilariousBheatBfootBfollowfridayBfixedBfiveBeverydayB	deliciousBdancingBcodeBcheersB	cancelledBbrainBboxBbarBbagB	availableBanywaysBafraidByupBworriedBwindowBtravelBthruBthanxBtellingBsupposeBsisBsessionBseriousBroadBreturnBprofileBplacesBouttaBnyBnobodyBmmmBlikesBlaughBknowsBgigBfutureBfreakinBfeverB	favouriteBdunnoBdownloadBdoubleBdarnBdaddyBcoverBcookBbummerBbroughtB
blackberryBartBuploadBtrackBsurgeryBsortBsoooooBsocialBrocksBpresentBprayBpeepsBpeaceBnormalBnahBmileyBmcflyBloseBloadsBlightBladiesBkillingBkeepingBinfoBfreakingBfingerBeyeB
everywhereBdaughterBcousinBcatchingBcallsBbreakingB	apartmentBvidBusualBuglyBterribleBspaceBshouldntBsenseBrecordBprivateBohhhBoftenBmessBlatestBjayBhasntBgottenBfmlBfabB
experienceB	expensiveBentireBdntB
depressingBdefBcriedBchildrenBchicagoBbuyingBburntBballBareaBanybodyBacrossBwitBwhosBturnedBtroubleBthoughtsBsurpriseBstreetBsomebodyBsillyBshiftBselfBsamBsaleBputtingBorderedBnoticeBnearlyBmailBlibraryBlayingBlayBlakeBkissBjoyBjokeBhoweverBholyBhmmmBhehBheadedBhandsBhahahahaBgermanyBfourBfatBdeathBblastBaskingBaccessByoudBwootBwatBwantingBumBtwiceBthirdBthaBsydneyBsweetieBswearBstrangeBskyBshowingBsharingBpossibleBpinkBpackBoopsBnickBneckBmessedBkneeBhusbandBhelpingBfreshBflowersBfightBfallingB	exhaustedBenergyBemptyBearthBdoinBchineseBbossBbarelyBawwwwB	australiaBaskedBapartBageBaffordBxoBwomanB	tweetdeckBturnsBsumBstraightBstickBspotBsmhBringBreBquizBplaneBperhapsBorderBmondaysBmatchBmacbookBlosingBlivedBknoBjoeBjobsBjackB	importantBhurtingBfloorBfishBfireB	finishingBfinalsBfaveBepicBdropBdoctorBdesignBdeserveBdeepBdammitBcrashBcousinsBcookingBchillBcanadaB
californiaBbottleBblockBblessedBblahBbirdBaugustBamericaBallowedBabtBwomenBwatchinBunlessBuniBthrowBsystemBsuxBsushiBsugarBsomehowBsixBshootBseriesBreleaseBqBpickedBphilippinesBontoBnoticedBnaBmsnBmsBmommysBmommiesBmixBmidnightBmajorBmagicBlocalBlieBlegBkateBjkB
interestedBideasBhooBhoneyBholidaysBhavBgregBgoshBfitBfiguredBfightingB	excellentBerBdyingBdryBdrBdoubtBdisneyB	depressedBdeBconversationBconfusedBcoastBcloudyBchannelBbritainsBblockedBbbB
backgroundBarmsBworkinBweveBwerentBwashB	uploadingBupdatedBuncleBtixBteethBstyleBstressedBstressBsoupBslowlyBslightlyBsimpleBshotsBsanBrealizeBquitBpubBpromiseB
productiveBpresentationBpracticeBplentyBpissedBpassedBnowhereBnorthBnailsBmrsBmouthBmommaBmoBmarriedBlearnedBkiddingBkickBkeysBjumpBheroBheresBhangoverBgivenBfridaysBfolksBfaultBexpectedBepisodesBdroppedBdragBdietBdentistBdaveBcostBcookiesBclosingBcheerBcardsBbuttonBbugBbfBbesidesBbenBaweBatmBarticleBarghBamericanBahhhhBahaBaddedBwideBwasteB
twitteringBtwitpicBtwitBtrulyBtrainingBtrailerBtoughBtonightsBtodaysBtanBtableBswimmingBsupernaturalBsuckedBstudioBspeakBsouthBriceB	recommendBpullBpleasureBpieceBpayingBpagesBnervousBmontanaBmissesBmemoriesBmallBloudBlookinBlaundryBkitchenBjuiceBjamBissuesBinviteBilyBhttpyfrogcomBhealthyBhdBgrandmaBgrandBgoodnessBfullyBfabulousBeventBeasierBdirectBdeskBdcBcrossedBcreditBcompleteBchoiceBcellBcarsBbuddyBbookedBarrivedBxmenBwoBwinterBwildBweeBwedBwashingBuhBtopicBtoastBtheatreBtgifBswimBsunburnBstepBstayedBstatusBspringBsimsBseattleBrowBreviewBrequestBremindsBquoteBproperlyBplannedBpartyingBpaintingBnoseBneitherBmileBmarathonBlenoBlearningBlaughingBkeyBjoinedB	impressedBimmaBhughBhrBhavinBhatB	happinessBgrossBgearBfourthBflatBfindingBfancyBfakeBevilBessayBemailsBdrinksBdressedB
downloadedBdoctorsBdeletedBdeckBdecideBcravingBcoughBcontactBchrisBchooseB	celebrateBburnedBburnBbornBblameBbathroomB	basicallyBbaseballBbadlyBawardsBarmBalexBalarmBaheadBadviceBactionBacBwiiBwaitinBvotedBtypeBtwittersBtweepsBtongueB
timberlakeBtenBteachingBteacherBtalkinBsuggestionsBstrongBstormBstatesBstateBstarvingBsecretBscheduleBryanBruinedB
rememberedBrelaxBprayingBpostingBplsBpartsBpantsBpainfulBowBooBofficialBmostlyBmealBmarkBmamasBlossBlivesBlikingBlessonBlawBlandBjbB	includingBhurryBhellaBhadntBgreyBgivesBgahBflashB	everyonesBenglandBeggBdocBdjBdetailsBdesktopBdemiBdelayedBcupcakesBcrappyBcountryBcolorBchickBcheapBcavsBbioBbedtimeBbecomingBbatteryBbathBbabiesB	attentionBappsBaddictedByrsByorkBwisdomBwindBweekendsBvsBvanBupdatingBtruckBtrendingBtipBtheyveBtextingBtexasBtasteBtalkedBstackBspamBsometimeBshiningBseveralBserverBsellBschoolsBsavingBrollBriteBrespondBrepliedBrealityBrealisedBpurpleBprogramBpopBpointsBparkingB	otherwiseBooohBoceanB	obviouslyBnetBmoroBmillionBmigraineB	mcdonaldsBmassageBmanagedBlordBlistenedBlightsBlettingBlargeBlakersBissueBiiBhttpustreamBhotelBhorseBheeB	happeningBgunnaBglassesBeditingBearsBdramaB
differenceBdegreesBcontinueBcntBcloserBclearB	christianBcelebratingBcaliBcableBbutterBbunnyBbottomBboardBbiggerBbeeBbayBbaconBattemptBasapBagainstBxboxBwroteBworkoutBwoohooBwithinBwestBwallBvotingBupsBtweetedBtonsBtoeBthunderBstudentBsteveBsportsBsooooooBskinB	situationBshoutBsecondsBrichBreportB	questionsBpriceBpreferBpositiveBperiodBpeoplesBopeningBofferBnotesBnormallyBnastyBmommasBmmmmBmichaelBmattBmaryBlessonsBlaughedBlackBkittyBkissesBjimmyBjamesBinsaneBhuntingBhopesBhollyBheavenBgudBgrrrBgrownBgrowBgbBfyiBfootballBfieldBfellowBfeedBfatherBexcuseBewBeastBdespiteBcompBcommentsBcleanedB	christmasBcenterBcancerBbuildingBbrightBboundBbostonBbootBbillsBbillBbffBballsBbahBawsomeBawhileBashleyBanywhereBannoyedBangryB	allergiesBaceByardByahBworriesBwetBwenBweightBvetBusbBusaBtweetersBtruthBtoyBtoooBtonBtipsBtinyBthomasBthemeBthankyouBtearsBtearB	surprisedBsunburntB
successfulBstockBstationBstandingBsquareBspeechBsomedayBsistersBsirBshootingBshellBsfBseatBsearchBscrewedBscoreBrushBruleBroleBroflBrockedBroastBretweetBresultsBresearchBrepliesB
recoveringBpostsBplzBphotographyBpeanutBpanicBpackedBorangeBoddBoctoberBnooooBnetworkBnerdBmodeBmiamiBmediaBmakinB	literallyBlimitBlevelBkeyboardBkeptBislandBinvolvedB
impossibleBignoreBidiotBhostBhonestlyBhimselfBheyyBhelpsBhearingBhardlyBgrrBgrowingBgreatestBgrayBgotsBgoodmorningBglassBgfBfirefoxBfemaleBfamousBeggsBdroveBdriverBdowntownBdirtyB	difficultBdegreeBdailyBcrushBcoveredBcookieBcompetitionB
collectionBchillingBchestBchattingBchargeBchangingBcertainBcarterBcanceledBcampBbunchBbrazilBbrandBbonesBbetaBaswellBalcoholBahahaBadorableBadmitBaddingBactBaccidentBwoopBwhewBwhetherBwatsBvistaBvisitingBviewB	vancouverBusesBummmBtyBtuneBtreeBtreatBtotalBtoothBtisBtheyllBthankfulBtermBteBsurelyBsubwayBstudentsBsteakBsryBspellBspeakingBsocksBsmellBsittinBshoutoutBseniorsBsemesterB	searchingBscrewBscienceBsceneBsaraBsandwichBsaladBsaBrudeBrubbishBroommateBreviseBreleasedBrainsBrachelBpulledBproperBproBpressBpossiblyB	portfolioBpopularBplayerBpickingB	photoshopBphonesBphillyBpetBperformanceBparisBparanoidBparamoreBpairBpaintBpackageBpaBnoooBnkotbBmtvBmistakeBmexicanBmemoryBmakeupBloserBlmfaoBknownBkellyBilBhttptinyurlcomdBhmBhillBheheheBheckBhealthBhanginBhaircutBhahBgrandparentsBgradBgolfBgoldenBgnightBgloriousBgloomyBftwB
frustratedBfriendlyBfreezingBforgiveBflyingBfilledBfeelingsBfashionBexpectBerrorBdumbBdrugsBdrankB	daughtersBdatBcuttingBcouchBcoreBcontentB
constantlyBconsideringB
connectionB
conferenceBclueBchipsBchinaBchildBcheckingBchapterB	challengeBbuttBbrownBbringingBbowlingBbkBbeyondBbestiesBbeinBbearBbandsBavoidBatleastBassignmentsBapBandyBaliveBalasBadBacheB	accordingByoungerByerByehByayyBwouldveBworeBwokenBwickedBwhoaBwaysBurlBurghBuploadedBtweetieBtrustBtrainsBtopicsBtokyoBtitleBthatllBteachBtattooBtalentedBtaBswollenBsuitBsuddenBssBsoulBsoberBsmokingBsmokeBsmilesBsmellsBsmartBskypeBskillsBsitesBshopsBshinyBsecBsavedBsalesBrockingBrevisingBreviewsBrespectBremindBregularB	recordingBqualityBpityBpancakesBovenBnutsBnooBnicoleBnamedBmouseBmodelBmissionBminiBminesBmikeBmeeeeBmassiveBmainBlooseBlogBlockedBlinesBlikelyBlaunchBknowingBjourneyBjoshBitï½sBisnBinvitedB	installedBieBhumorBhuluBhttptinyurlcomcBhillsBheavyBheadsB	headachesBhandleBgradeBgrBgossipBglasgowBgiantBgeekBgdBgasBgaBfranceBforcedBfloridaB	extremelyBexistBewwBeventsBeuropeBericBenterBeconomyBearBdutyBdishesBdiegoBdannyBcyrusBcrossBcrackBcountingBcontrolBcontactsBconBcominBclickBchemBchargerB	characterB	certainlyBcakesBbugsBbudgetBbtBbringsBbotheredBboooBbobBbirdsBbiggestBbellaBbasedBbagsBavatarBatlB
assignmentBappointmentBanniversaryBangBaimBaddressBadamBactualBaccidentallyBaboveBzeroByuBwkBwirelessBwinningBwifiBwheneverBwaveBwalmartBwalkedBvillageBuserBughhhBtweepleBturningBtoysBtmrwBthnxB
terminatorBtechBteaseBtagBswiftBswayBsurprisinglyBsuccessBstrawberriesBstoriesBstarsBspokeBspiderBsomeonesBsoccerBsnapBsmilingBsigningBshineBsettingBseatsB	screamingBscareBrunsBrossBroseBrobBridingBregretBrecipeBreachBrainedBpushBpreviewBpooBpoliceBplainBpissBpillsBpicnicBpersonalBperBpaulBoriginalBoooohBoooBolderBohhhhBnumbersBnovemberBnoooooBnoonBnoodlesBnonB	neighborsBmummyBmsgBmorrowBmmB	miserableB	microsoftBmiaBmiBmetalBmehBmeaningBmathsBmaskBmarriageBmarketB
manchesterBlisaBlinksBleadBlawnBlapBlangBlaidBjoiningBjesusBitalianB
incrediblyB
incredibleBidolBhttptweetsgBhttpmylocmeBhonestBhonBholeBholdingBhenrieBhayBhatedB
hahahahahaBgroceryBgrabBgiftsBfriesBforceBflickBfilesBfarmBfacesB	everytimeBerrandsBentryBeffortBebayBdreamingBdrawingBdownloadingBdisBdigitalBdeliveryB
definatelyBdecentBdecemberBdamnitBcullenBcriesBcreepyBcreativeBcreatedBcrashedBcorrectB	convincedBcontestBconstantB	computersBcomfortableBcoachBcloudsBcinemaB	chemistryB
charactersBcashBcarryBcafeBbuildBbrianBbreathBbotherBboredomBboatBbloggingBblocksBbellyB	beginningBbecameBbeansBbananaBbakedBbabysittingBaustinBattackBarriveBapptBankleBanimalBangelsBamyB	americansBalBakaBactingByouthBxxxxBwingsBwassupBwarBvotesBuselessBusefulBtwitterlandBtonyBtimBtextsBtescoBtaxBtastesBtacoBsurviveBsuggestB	sufferingB
strawberryBstoresBstarwarsdayBspreadBspainBsoloBskiesB	singaporeBsignedBshudBshowedBshortlyBshakeBsettingsB	septemberBsellingBseesBseaBscriptBscratchBsayinBsarahBsangBsadnessBrubyBroughBroofBriseB	receptionBrecentlyBquotesBqueenBpureBprincessBpreBprayersBpoopBpjsBpillowBpatheticBpassesBpartnerBpalmBoutfitBotBolBobamaBntBnomBmusicalBmorninBmomentsBmicB	marketingBmarieBmagazineBlyingBlovinBlocationBleavesBlabBknightBkingBkayBkatieBjstBjrBjokesBjessBjerkBjeffBjapaneseBitemsBinstallBindianBicedBhwBhuntB%httpappsfacebookcomdogbookprofileviewBhookedB	hollyoaksBhoBhittingBhelpedBheldBheelsBhatingBgratefulBgrassBgodsBgirlfriendsB
girlfriendBghostBgarageBfruitB
friendsterBfridgeBformBfoodsBfinaleBfillingBfeedbackBfedBfearBfasterBfailingB	expectingBexchangeBexactBepBendsBeffectsBedBdyeBdsBdishBdisappointingBdependsB	deliveredBdeleteBdecisionBdawnBdatesBdallasBcustomerBcuriousBcuddleBcrossingBcornerBconverseBcomfyBcomedyBcomBclockBclientsBcleverBclassicBchargedBcentreBcentralBcandyBcancelBcaBbustBbumBbudBbrowserBbritneyB	brilliantBbreatheBblehBbitsBbellBbeautyBbeaBbakingBbahahaBbackupBayBawesomenessBappearBannaBangelBahhhhhBagreedB
afterwardsBadvanceBzooByuckyByessByellowByeahhBwudBwrkBwrapBwondersBwkndBweakBwavesBwashedBwanaBwahBverizonBvanillaBusernameBuponBunitedBunhappyBunableBubuntuBtypingBtypicalBtwitterverseBtwitsBtwinsBtripsBtouringBtorontoBtoolB	tomorrowsBtoddBthrewBthingyBtheoryBtheeBtheaterBthailandBtestingB	tennesseeBtellsBtaxiBsundaysB	sunburnedBsuckyBsubjectBstoleBstokedBsteelBstageBsortedBsonsBsocietyBsnowBsmsBslowerBsizeBsissyBshoulderBshipB	shatteredBshapeBseniorBsecurityBscrubsBscreamBscanBsauceBsantaBriverBreturnedBretardedBresponseBreplyingBrepeatBremindedBrecoverB	recognizeBrealyBrateBquicklyBpurseBpuppiesBproofBproductBprocessBprobsBprisonBpreviousBpouringBpotatoBpoleBpocketBplurkBpleasedBplaysBplantsBplantBpjBpixBpiecesBpieBphewBpastaBozBoweBosBoptionBomfgBobsessedBnursingBnuggetsBnothinBnineBnightyBngB	newcastleBnephewBnegativeBnawBnamesBnakedBmysteryB	mountainsB
motivationBmodelsBmitchelBminorBmexicoBmembersBmcBmasterBmarleyBluckilyBlowerBloungeBlogoBloBlipBletterBlegalBleavinBlaurieBlasBlanguageBkkBkirkBkingdomBkillsBkillersBkillerBkickedBkeenBjussBjuniorBjtBjonathanBjamieBitselfBishB	insuranceB	infectionBincludeBimacBicecreamBhumanBhttpbkitecomBhoustonBhorrorBhomieBhockeyBhighlyBhelpfulBhedBhavntBharderBguiltyBguiltBguessingBgreysBgrandpaBgraduateBgraceBgoldBgmailBgmBgingerBgeorgeB	geographyBgeneralBgeezBfusionBfuneralBfrmBfrigginBfriedBfriBfoxBfoolBflewBfilmsBfillBfestivalBfeatureBfaithBentertainingBendingBenB	emotionalBellenBeightBedgeBdunBdriversBdrawBdraggedB
downstairsBdougieBdonB
distractedBdigBdiesBdeviceBdemoBddBdayyBdanBdamBcsBcruiseBcourtBcouldveBcostumeBcostsBconvinceB	confusingBcomparedBcomicsBclimbBchinBchilledB
cheesecakeBcheckinBchangesBcanucksBcampingBcamBcalmBcabBbuzzBburgersBbuggerBbsBbrosBbreadBbradBborrowBboomBbombBblowsBblowBbeginBbangsBbangBauntBaudioBattendBarmyBappreciatedB	announcedBanimalsBamusingBamountBadultBadoreBactiveBabilityBzoneBzombieBzealandByeyByahooBwrittenBworldsBwoodsBwksBwiseBwinnerBwindyBwillingBwhooBwhoeverBwhBwbBwastedBwalletBwalesBwaBvirusBvirtualBvipBvidsBvenueBvalleyBvaBupgradeBunfairBummBuberBtylerBtwittsBtwittingBtwittervilleBtwitterberryBtweetupBtweetiesBtshirtBtrousersBtreesBtransferBtracksBtpBtooooBtoolsBtomorowBtommorowBtomatoBtoesBtodayiBthrilledBtestsB
technologyBtanningBtampaBsyncBstuffedBstubbornB	stressfulBstreamBstopsBstoodBstolenBstinksBstephBstarwarsBstarshipBstaffBsrslyBspinningBspellingBspanishBspBsoooooooBsoonerBsomewhatBsolidBsmithBsingsBsimplyBsimilarBsignsBshouldveBshortsBshoeBshockedBsharedBserversBsentenceBseemedBsaddestBrulesBruinBrubBrollsBrlyBridBresultB
restaurantBresistBreportsBreplaceBrepairBrentBremoteBrefusesBreceivedBreasonsBratBqueensBpromisedBprintBprideBpresentsBpoundsB	potentialBporkBpoppedBpongBpitBpissingBpigBphilBperthB
personallyBperformBpartiesBparentBovercastBoutlookBoursBorlandoBopinionBoperaBoilBohioBnxtBnorBnieceBnicelyBneighborBnbaBnatureBnailBmpBmowBmonsterBmonitorBmonBmoiBmmmmmmBmindsBmidBmichiganBmichelleBmethinksB	mentionedBmemberBmeltedB	melbourneBmeetingsBmedsBmedicineBmassBmartinBmarryBmandyBmaleBlyricsBlovatoBlongestBlogicBlimitedBlicenseBlemonBlegitBlebronBlastsBlastfmBlambBkoreaBkoB	knowledgeBkittiesBkittenBkindsBkarmaBjunkBjumpingBjudddayBjoesBjoBjgBjenBjeansBjaBitemBitalyBironBinstantBinspirationBindianaB
impressionBimoBimageBikeaBignoringBhyperBhungBhttptinyurlcomBhpBhopefulBhonourBhollieBhmphBhitsBhidingBhideBhardestBhappiestBhappierBhandyBhaloBhaiBgroupsBgroundedBgrillBgrewB	greetingsBgreaseB	graduatedBgniteBgermanBgeniusBgalleryBftBfrustratingBforumBforestBfishingBfilmingBfilipinoBfileBfiguringBexplainBeverythingsBespBempireBelBeffingBeditB	edinburghBdvdsBdudesBdublinBdryerBdrivesBdrewBdreadingBdorkBdocsBdmsB
discoveredBdiffBdiamondBdhBdenverBdelayBdeadlineBdareBcyclingBcutestBcurrentBcuppaBcupcakeBcrownBcrewBcrawlingBcrashingBcrampsBconsiderB	connectedBcomplicatedBcommuteB	communityBcometBcokeBcmonBcloudBclientBchristBchiliBcheesyBcharlieBcdsBcastBcapBcanï½tBburgerBbuffaloBbubbleBboxesBbowlBbooooBboilingBbluesBblipBbizBbettyBberryBbensonBbelovedBbelongBbeboBbeatsBbeatingBbearsBbeardBbblBbattleBbatmanBbassBbabesBayeBawhBaussieBauditionB	attendingB
attemptingBattackedBarrivalBaptBappliedBapplicationB	apologiesB
apartmentsBanxietyBanthonyBansweredBandrewBamberBallergicB	advantageBackBacceptedBzombiesByogaByelledByeahhhBwthBwoooBwivesBwinkBwilliamBwifBwhoopBwhomBweeklyBweedBweathersBwearsBwarningBwaitedBwackBviewsBvictoriaB
vegetarianBupcomingB
unfollowedBunBultimateBughhBtxBtwppBtwitterificB
twitterersBtwistBtwasBturtleBtrynaBtryinBtraditionalBtoooooBtonsilsBtoiletBtodayyBtmobileBtisdaleBtireBtightBthusBthursBthumbsBthumbBthrownBthnksBtheydBtherapyB
themselvesBtheirsB
thankfullyBthaiBtextedBtendBtempB	teenagersBteachersBtargetBtapeBswitchBswedenBsweatyBsweatingB
surroundedB	surprisesBsunsBstrepBstreetsBstealB	standardsBstairsBsprayBspeedBspeakersBspammersBsouljaB	sooooooooBsonnyBsomethinBsoftwareBsoftBsobBsnuggleBsnackBsmoothieBsmoothBsmileyBsmashedBsliceBskipBskintB
situationsBsitterBsingerBsilenceBsightBshuffleBshouldaBshirtsBshedBsettleBselectedBseasonsBseBsdBsausageBsaltBsafariBroveBrouteBrosieBrockinBrobinBriotBrevengeB	remindingBreminderBrelayBrelaxinBrelatedB	regardingBrecordedBrecommendationBreckonBrecentBrealiseBrcBrayBrarelyBrandomlyBramBquarterBqldBpunchBpullingBpugBprojectsBprogressBpretendBpressureB	presidentBprepareB	prejudiceBprayerBpotterBpotB	postponedBposterBpositionBpoppingBpoliticsBpodcastBplayinBplanetBpigsBpianoBpetsBpeterB
performingBperezBpepperBpensBpaysBpatBpasswordBpassingBparticularlyBparksBpandaBpadBownerB	overnightBorderingBoprahBonionBomjBoliveBofflineBofffBoclockBobviousBnvmBnooneBnoiseBnoesBnjBnintendoB	nightmareBniB
networkingBnestBneilB
neighboursBneatBnativeBnationalBnathanBmushroomBmuahBmovesBmountainB
mothersdayBmorningsBmornBmodernBmixedBmiteBmissinBminusBmetroBmensBmeeeBmeeBmediumBmcrBmbBmaybBmariaBmangoBmanagerB
managementBmanageBmaddieBlungsBloveeeeBloopBlolzBlollB	locationsBlitBlisteninBlistedBlinuxBlilyBlettersBleeBledBleadsBlbsBlaurenBlauraBlaughsBkickingBkewlBkcBkaraokeBjpBjointBjohnnyBjetBjavaBjasonBjakeBjacketBitdBinternationalBinspiredBinputBinnerBinlawsBinfamousBindustryBindiaB
impressiveBimaginationBignoredBidiotsBiconBianBhveBhttpffimBhtmlBhottBhopBhoorayBhookBhoodBhonoredBhomemadeBhomelessBhiyaBhireB	highlightBhecticBheapsBheadinBhatersBharryBhallBhahahahBgutBgurlBgunBguineaBguideBgtBgrrrrBgrandmotherB
graduatingBgooseBgooodBgonaBgonBgnaB
generationB	gardeningB	furnitureBfryBfrogBfrankBforumsBforthB	forgottenB
forgettingBfoneBfocusBfoBflowerBflowBfliesBflickrBfavorBfailureBfailsBexpertB
exhaustingBexBeveBescapeBerinBenvyBentertainmentBemployeeB	emergencyBeffedBeclipseBeasilyBdustBdumpBdumBdrummerBdrinkinBdragonBdomainBdollsBdollarBdmvBdizzyBdistractionsBdistanceBdisplayB
disneylandBdislikeB
discussionBdisappearedBdinBdiggingBdiaBdiBdewB
devastatedBdemonsBdemBdefoBdefaultB	dedicatedBdealingBdavisBdataBdarlingBcutieBcurseBcureBcubsBcryinBcrowdBcreekBcoolestBcoolerBcookedBconvoBcontractB
consideredBconnectB	confirmedBconcentrateB
complimentB	completedBcommenceBcomicBcomcastBcomboBcoloradoBclipBclickedBcircusBcinnamonBciBchuckBchromeBchoresBchillyBcheaperBcharityBchairBchainBchaiB	celebrityBcasesBcasaBcapitalBburningBbuddiesBbrunchBbrooklynBbridgeBbrideBbrbBbottlesB	bookstoreBbonusBblinkBblewB	blessingsBbitesB
birminghamBbiologyBbingBbestieBbedroomBbeastBbbyBbbcBbarsB	barcelonaBbakeryBbacBawwwwwBatticsBassumeBartistsBartistBanswersBanimeBamazonBallahBaliceBaliBaightB	adventureBadsBachesBaccountsBacceptBacademyBabitBytByousByesssByaayByaaaayBxoxBwutBwriterBwristBwoutBwouldaBwornBworkshopBwoeBwishedBwiBwhtBwhoopsBwhilstBwastingBwarpedBwangoBvtB
volleyballBvibesBvampireBurgeBupgradesBupgradedBunionB
unexpectedBuhhBughhhhBtxtBtwitterworldB	twitteredBtwistedBtwinBtwBtumblrBttBtrentBtreatsBtrashB	transportBtranslationB
trampolineBtrailBtradeBtowelBtowardsBtouchedBtornB	toothacheBtnBtiringBtiresBtimingBtiffBtiBthunderstormBthtB	thousandsBthinkinBthinBthickBtennisBtehBtcBtbhBtaughtBtastyBtaskBtangoBtakinBtagsBswingBsweetyBsweetestBsweatB	suspendedB
surprisingBsupplyB	superstarBsupermanB
suggestionBsufferBsuddenlyBsubBstuffsBstudiedBstrikeB	strangersBstickerBstalkingBstalkerBsportB	spongebobBspareBspammingBsoyBsortingBsortaB
somethingsBsolutionBsoftballBsodaBsoakBsnoringBsneezingBsneakBsmallerBslipBslightBsleepinBslammedBsizedBsinusBsignalBsidewalkBsidekickBshippedBsgBsewingBseparateBselfishBselenaBseanBseafoodBscrollBscottBscotlandBscaringBsbB	saturdaysBsanctuarysundayBsalaryBsackBsacBrtBrsBrootsBrootingBroomsBroomiesBrollingBrogersB
robluketicBrobertBrippedBringsBridiculouslyBridesB	replacingBreplacementBremovedBreliefB
relaxationBrelationshipsBrelationshipBrelateB
regrettingB
registeredBrefuseB
refreshingB	referenceBrecoveryBrecommendedBrecommendationsBreceiveBreaderBreactionBreachedBrbBraysBrangBraiseBrabbitsBrabbitBquiltBqueBpythonBpushingBpushedBpurposeBpurchaseBpumpedBpromoBprollyB	programmeBprofessionalB	pritchardBpriorityBprinterBprintedB	pricelessBpresenceBpregnantBpreciousBpracticallyBprBposhBportugalBpokerBplugBplaylistBplantedBpizzasBpinBpiggyBphysicsB
physicallyB
photoshootBphBpfftBpersonalityB	perfectlyBpeerBpeeBpeacefulBpatternBpatioBparadeBpapaBpanBpalBpainsBowlBovertimeBoriginsBordersBopenedBoocBoliverBohhhhhBoceansB	obsessionBnzBnvrBnutBnumbBnothingsBnoooooooBnmBninaBnickyB	nevermindBneighborhoodB	neglectedBneedleBnecklaceBnatalieBnatB	nashvilleBnansBnachosBmuscleBmultipleBmuffinsBmuffinBmudBmuchoBmsgsB	motivatedBmotionBmontrealBmonkeyBmonicaBmollyBmodemBmodBmissyB	miserablyBmintB	milkshakeBmilanBmessingBmeowBmenuBmeltBmelBmaxBmauiBmatthewBmattersBmatesBmarksBmarchBmanlyBmaintenanceBmagicalBlukeBlucasBloveeBlouiseBloosingBlonerBloliBloginBloggingBlockBljB	liverpoolBlikeyB	lightningBlighterBlemmeBleighBlectureBlayoutBlatteBlastedBlambertBlakerBlahBlactoseBlackingBkudosBkoreanBknockedBkneesBkmBkingsBkimBkicksBkickinBkevinBkennyBkatBjusticeBjuryBjudgeBjordanBjoeyBjjBjimBjerseyBjennyBjazzBjapanBjaneBjailBjacksonBjacksBivBitchyB	invisibleBinspireB
inspectionBinboxBimaxBillegalBhurrayBhungoverBhttptinyurlcommBhostageBhorsesB	hoppusdayBhopedBhonorBhomesB	hollywoodBhollaBholdsBhoeBhmmmmBhkBhiiiBhiccupsBhhrsBheyyyBherselfBhersBheroesBheartsBhealBhayleyBhayfeverBhawtBhardcoreBhackedBhackBhacBgutsBguildBguessedBgroundBgrilledB
greenvilleBgoooodBgoodbyesBgoalBglobalBgirlyBgigsBgiB	generallyBgaspBgaryBgainedBgagaBftskBfrickinBfreezerB	franciscoBframeBformatBforeignBfollowsBflyerBflightsBfitnessB	financialBffsBfestBfcB	favoritesBfattyBfathersBfarewellBfamiliarBfalseBfairlyBfactorBexternalBexplodeBexpiredB
experimentBexerciseB
eurovisionBetsyBespressoBescapedBesB
enterpriseBenteringBemoBemmaBemilyBeffinBeditionBeditedBeddieBeconomicBeatinBeatenB	earphonesBduhBduckBdualBdrsBdroppingBdosentBdoorsBdooBdonnieB	dollhouseBdollarsBdollBdkB	disturbedBdiscussB	discoveryB
disappointBdingBdieselBdevonBdevilBdesireBdeservedBdenBdeeB	decisionsBdayyyyBdayiBdayandBdanielBdammBcycleBcusBcurveBcurryBcudBctBcruisingBcruelBcrochetBcrisisBcreatingBcreateBcrawlBcrackingB	coworkersBcoworkerB
courseworkBcountsBcoughingBcopBcookerBconfirmationBcomplainingBcomplainBcommonBcoldsBcodingBcobraBcoatBclosestBclimbingBclearlyBclearedBcleanerBclapBcitiesBciaraBchoirB
chocolatesBchipotleB	childrensBchiBchefBcharmingBchancesB
celebratedBcbaBcaresBcareerBcallinBcalBcacheBbustedBbushBburritoBburnsBbullBbuiltBbucksBbruceBbrodyBbrittanyBbritainBbradieBbootsBbooooooBblownBblowingBblogsBblindBbleedBbleachBbiteBbillyBbgBberlinBbelowBbeliveBbelgianBbecuzB
basketballBbasicBbashBbareBbanquetBbalanceBbakeBbakB	backroundBawardBautoB
australianBaudienceB	attackingBasthmaBasianBarrivingB	argentinaBapplesBanneBandroidBamoB	amazinglyBalllllBallllBallenBalgebraBalbumsBakoBahhhhhhBahahahaBaghB
adventuresBadvancedB	addictionBactsBactressBactivityBachingBachBacctBaccomplishedB	acceptingB	abandonedBaaronBaahBaaaahBzuBzoeBzeldaBzachBzacByummByogurtByippeeByewByessirByellingByearbookByeByayyyByaaayBxpBxoxoxBwwwyoutubecomchineselearnBwtheBwtBwsBwrappedBwotB	worldwideBwordsaftersexBwoooooBwomensBwivBwittyBwipedBwinsBwifeyBwhnBwhiskeyBwheredBwhensBwheelsBwheelBwendyBweighBweedsBwebcamBwarrenBwarnB	wanderingBwandBwallsB	wallpaperBwalksBwaaaaayBwaaaBvpBvisualBvisaBvirginBvintageBvictoryBversionsBveronicaBverifyBvenusBventBveggieBveBvastBvacaButahBursBupsideB	unpackingBunluckyBuniverseBunitBuniqueBunfollowB
unemployedBunderstandsBultraBudBtwentyBtweeterBtweeplesBtvsB	tutorialsBtunedBtuesBtuckingBtubesBtubeBtrippinBtripleBtrickyBtrickedBtrickBtrialBtrendBtreatedBtravisB	travelingBtragicB	traditionBtouchingBtossBtortureBtoddlerBtmwBtmrBtilaBtigerBtieB	throwbackBthreadBthouBthirtyBthatdBthasBthaaBterriblyBtemptingB	temporaryBteddyBtechnicallyB	technicalBteasedBtbBtattoosBtarmacBtankBtalksBtakersBtaiBtacosBsyndromeBsyncingBsympathyBsykesBswitzerlandB
sweetheartBswedishBswBsuspectBsusanB	survivingBsurfingB
sunglassesBsumthinBsuckerB	submittedBsubjectsBstunningBstungBstudyinBstuB
strugglingBstrongerBstretchBstoppingBstoneBsteamBsteadyBstayinBstatsB	statementBstatBstanleyBstadiumBssdBsrryBsrBsquirrelBsquadBsqlBspotifyBsposeBspokenBspoilBspockBspiritBspinachBspicyBspeltBsowwyBsourceBsourBsoapBsniffleBsniffBsnacksBsnBsmackBslippersBslimBsleepsBsleeepBslapBslackingBskoolBsklBskiBsitsBsimpsonsBsimonBsilentBsigjeansBsiBshowinBshoweredBshoutsBshiteBshaveBshaunBsharesBshannonBshackB	selectionBsectionBscreamedBscoresB	scheduledBscB	satisfiedBsampleBsamanthaB	salvationBsakeB
sacramentoBrumBrugBrpBrosesBromanticBromanceBrogueBrockyBrockstarBrocketBriskBrioB
ridiculousBreznorBreturnsB	returningBresumeBrestingBrestedB	responsesB
respondingB
rescheduleBrequiemB	representBreplysBreplayBrenewedBremoveBremixBrememberingBremeberBreloadB	relativesBrejectedB	rehearsalBreelBredoB	recessionB
reasonableBreadinBrawBratsBratesBrantBranchBraisesBraisedBquizzesBquietlyBpwBputsBpupsBpunkBpumpBpukeBpuddingB
psychologyBpshhBproveBprosperBpropsBpromoteBprizesBpricesBpoutingBpoundingBpotatoesBpossibilityBposB
populationBpopsBpoppinsBpopcornBponytailBponyBpolishBpolarBpointingBpoetryBplotBpleasantBplateBplanesB
placementsB	placementBpitchBpissesBpingB	pineappleBpileBpiesBphotographerBphoenixBphaseBpgBperoBpenBpedicureBpeasBpearlBpeBpbBpauloBpatientBpatienceBparodyBparadiseBpapersBpandoraBpamperBpamBownersBovercomeBoverallBottawaB
originallyBoptionsBopportunityBootBoooooBooooBofferedBoffenseBoffendedBnwBnurseBnotebookBnonstopBnonethelessBnolaB
nightmaresBnhlB	newspaperBnewestBnevaBnervesBneedlesBneedaB	necessaryBneBnappingBnanoBnanaBmuyBmushyBmunchBmumbaiBmowingB	morrisseyBmorganBmoodsBmonkBmkBmisterBmistakesBmikeyBmightyBmiddayB	metallicaB	messengerBmerlinBmerchBmentorBmentalBmeganBmegaBmeetsBmedicalBmayhemBmatrixBmaterialBmarylandBmartiniBmarkedB
margaritasBmarcBmapBmanualBmannBmahBmagBlykBluggageBloversBloverBloveeeBlovBloooongBlogiesBlogicalBloggedBlockerBlobsterBloadingBlivinBliverBlistingBlindaBlimeBlimbBlikewiseBliftBlifetimeBlifesBliesboystellBliesBliedBlgBlesBleopardBlenosBlemonadeBlegoBlegendBleagueBleaderBleBlaughterBlaptopsBlappyB	languagesBlandedBlaceyBlaborBlabelsBkyleBkoiBknwBknoxBknowwBknockBknittingBknifeBkidneyB	keyboardsBkenBkellieBkeithBkeBkaylaBkaBjungleBjournalBjonesBjoanBjesseBjellyBjeanBjaysBjamsBjadeBjackmanBjackassBiï½veBittBitouchBitbutBironingBirishBirelandBiphonesBiowaBinvolvesBinvitingB
invitationBintroB
interviewsBintenseB	inspiringB	insomniacBinsBinloveBinjuredBinformationBindoorsBindieBindependentB	increasedBincludedBinchesBimsBimproveB	impatientBimmediatelyBiloveBikrBikBicarlyBicantB	hurricaneBhunnyBhumidBhughesBhuggedBhubsBhttpplurkcompsuBhttpplurkcomprpBhttpBhtownBhqBhowdBhostsBhostingBhostedBhorridBhookahBhongBholsBholesBhoedownBhipsBhipBhighwayBhigherBhidBhenceBheeheeBheatherBheaterB
headphonesBhawksBhawaiiBharshB	harddriveBhandsomeBhandlesBhandedBhairsBhahahhaBhahaaBgunaBguestsBguestBgroveBgrinBgreetingBgreetBgreeceBgravityBgrapesBgrapeBgrandmasBgrandeBgpsBgoodluckBgoodiesBgooBgoldfishBgmorningBgloomBgiveawayBgitBgirlieBghostsBghBggBgangBgamingBgambitBgainingBgahhBgadgetBfurtherBfunniestBfunkyBfuneralsBfrozenBfrogsBfrickenBfreedomBfredBfrankieBfrBformsBformerBfontsBfontBfollowinBfoldingBfoldBfogBfluffyBflopBfloBflipBflBfittingBfitsBfishiesBfiredBfindsBfifteenB
fieldnotesBfeedingBfangirlBfactoryBfabricBexpressBexpoB	exploringBexperiencingBexitB
exhibitionBevidenceB
eventuallyBeventfulBeuroBestateB	equipmentBequalsBepsBentirelyBentertainedB	enjoyableBengineB
engagementBendlessBelleBelectricBeffBeekBeeeB	educationBearringsBeaglesBeaBdyedBdullBducksBdubaiBdrumBdrillBdrearyBdreamtB
dreambearsBdozenBdownsideBdopeBdoooBdonutsBdongBdohB	documentsBdivingB	diversityB	disgustedBdisconnectedBdiscoB	directoryBdirectlyBdipBdiningBdiggBdianneBdevelopmentBdetroitBdessertB	desperateB	designersBdescriptionBdepotBdenmarkBdenialBdellBdelightBdelhiB
definitionBdebitBdebatingB	deadlinesBdatabaseB	dashboardBdangitB	dangerousBdaneBdamnedBdamageBdaftBcyaBcurrencyBcurlyBcultureBcueBcsiBcrushedBcrunchBcrimeB
creativityBcraigBcraftyBcrabBcozyBcowBcoveringBcoverageB
courthouseBcouldaBcostaBcornBcorkBcopsBcopiesBcopeBcooksBconvertBcontrolsB
contributeB	continuesBcontextBcontBconradB
conditionsB	conditionBconcreteBconcernBcompsB	companiesBcolourBcollectB
colleaguesBcolinBcoldplayBcoincidenceB	cocktailsBcocktailBcnnBcnBclubbingBclaraBcitizensBcircumstancesB	christineBchoseBchocBchitBchirpingBchipBchillenB
chillaxingBchileBchelseaBcheeringBchasingBcharmBchargingBcharBchapBchampsB	champagneBchaBcgBcerealBcentsBcelebsBceBcausedBcategoryBcassieBcasinoBcartoonBcarrieBcarpetBcarolinaBcaringBcarelessBcarefulBcardioBcapacityBcampusBcamerasB
calculatorBcabinB	butterflyBbushesBbumpedBbuenoBbryanBbruisedBbruiseBbrowsingB	broadbandBbritsBbriefBbrickBbreaksBbraveBbrandonBbracesBbraBboxingBbotsBbotBboozeBboostB	booooooooBboiBbodiesBblondeBblockingBblistersBblissBblendBblechBblanketsBblanketBblankBblBbittersweetB	birthdaysBbillionBbikesBbhbBbfastBbeyonceBbesideBbensBbendBbelatedBbegunBbecomesBbathingBbatBbasketBbasementBbaseBbarackBbagelBbackyardBbabyyBbabysBbaBazBawkwardBaverageBavBauthorBauntsBauntieB	auditionsB
attractiveBattitudeBattemptsBattBasylumBastonB	assistantBassesBassemblyBashamedBarvoBarticlesBarrivesBarnoldBarizonaBargumentB	archuletaBarchieBappropriateBapproachingBappreciationBapplicationsBanywhoBanxiousBanimatedBandorBamenBamazedBaloudBalikeBalienBaidenBaidanBagreeingBafricaBadvertBadoptB	admittingB	addictiveBactorBacidBabbyBzzzzBzsBzeBzackBzacharyByurByummmByuckBytonyB	youï½reByouuByouiByoubutByjByikesByestBydayByawnByasByanByalBxxxxxBxsBwxBwuvBwuBwritersBwrestlerBwreckedBwrBwpBworthyBworryingBwooowBwoodyBwoodBwolfBwockeezBwntBwkendBwizardBwitnessB	withdrawlBwireBwinnersBwingBwillyBwikiBwidgetBwidBwhyyyyBwhistleB	whispererBwhipBwheatBwhattaBwhatchaBwhackBwhaaaatBwerntBwendysBwelshB
wellingtonBweirdestBwebsitesBwcBwayyyBwatingBwateredB
washingtonBwarrantyBwarningsBwardBwandaBwallaceBwakesBwaitiBwagonBvwBvoodooBvolumeBvogBvodkaBvocalsBvmwareBvisitedBvisibleBviralB	violentlyBvinegarBvincentBviewingBviewersBvietnamBvictorBvhsBvhBveniceB	vegetableBveganBvarsityBvancityBvalueBvalidBvacuumBvacayBuveBuuButterButiButBustreamBusersBurselfBuptoBupiBuntillBunrealB	unlimitedBunlikeBunknownBunitsBunintentionallyBungodlyBunfortunatlyBunfortunateB
underbellyBuncoolBuncomfortableBullBuiBuhsBuhhhBuggghBuggBtyraBtymBtwittiesB
twitterenaBtwhirlBtweepBtutBtupacBtunaBtumBtuBttylBtskBtshirtsBtsBtryedBtrumpsBtrumpetBtruBtroyBtroopersBtristeBtrippedBtresB	treatmentBtreatingBtravelsB
travellingBtrappedB	translateBtransformersBtrailsBtragedyBtradingBtraderBtoyotaBtowardBtowB
tournamentBtouristBtortaBtorisBtopsBtoppedBtonightiBtommyBtokioBtodoBtodayyyBtnxBtminusBtinkBtinaBtimelineBtierdBtidyBthtsB	throwdownBthrBthousandBthirstyBthighsBthierBtherellBthemesB	thatï½sBthankingBtesterBterryBtermsBterminalBtendsBtemptedBtemperatureBtelecomBteeheeBtechnoBteamsBteachesBtdBtcotBtaxesBtattooedBtatBtasticBtaoBtannerBtallBtalesBtalagaBtafeBtadBtackleBswitchedBswingsBswinefluBsweetsBsweepB
sweatshirtBsweatsBswagBsuvBsurvivedBsurveyBsurfB	sunscreenBsundaeBsulkingBsuicidesBsudokuBsuckingBsubtleBsubscribersB	subscribeBstylishBstripedBstripBstringBstrikesBstrengthBstrawBstrangerB	strangelyBstrandedBstraightenerB
straightenBstormsBstorageBstitchesBstinkBstickyBsticksBstickingBstevieBsteppedBstephenBstealthBstatusesBstatueBstaticBstartrekB	starfleetBstankyBstandbyBstandardBstalkersBstaleBstableBsqueezeBspringsteenBspreeB	spreadingBsprainedBsprainBspoonBspoiltBspoiledBsplitBspitBspiritsBspilledBspillBspellsBspelledBspeedyBspeedsBspeedingBspedBspecificallyBspecificBspearsBspeakerBsparklyBspacesBsoxBsourcesB
soundtrackBsoundingBsoundedBsoulsBsooooooooooBsonyBsomaticBsoleB	sociologyBsocalBsnickersBsnakeBsnailBsmackedBsmBslowestB	sleepoverBslaveBslBskirtBskillzBskateBskBsizesBsiyaBsinusesBsinkingBsingersBsinBsimBsihBsighsBsidesBsicknessBsickerBshrimpBshownBshowersBshowcaseBshoppedBshockBshizzBshippingBshinBshiftsBshieldsBshhhBshhBshelvesBsheetBsheeshBsheepBshawBshatnerBsharpBsharkBshampooBshallowBshadowBshadesBshadeBshBsetupBsetsBserveBserialBseptBseperateBsepB	sentencesBsemiBseekBseedBsedBseaworldBscrubB	screeningBscratchyB	scrambledBscoutBscifiBschooolB	schedulesBscenesBscarBsbsBsavingsBsassB	sarcasticBsansBsanityB
sandwichesB	sandwhichBsandB	sanctuaryBsammyBsambergBsalonBsagaBsafelyBsadiBsaddenedBsaddBrussianBrunnyBrunninBrunnersBruiningBrugbyBrubbingBruBrrBroutineBrouterBrottenBroomieBrooftopBronBromeoBrolledB	ringtonesBrickBrichmondBrichieBrichardsBrichardBriBrfcBrezBrexBrewardBreunionB	retweetedBretroBretiringBrestrictionsBrestaurantsBresearchingBrescueBrescheduledBrequirementsB	repingingBrepeatedBrentsBrentedBrenoBreminiscingBremainsBrelyingBrelaxedB
relativelyBrelativeB
rehearsalsBregistrationBregardsB
regardlessBrefusedBrefundB	refreshedBrefreshB
referencesBreeeallyBredheadB
redesignedBredbullBrecitalBrecipesB	receivingBrebelB	realizingB	realisticBreadsBrapBrankinBrangersBrandomsBramenBraleighBraininBrailsBraidBradBrackBracismBrabiesBquotedBquittingBquintoBqueriesBqiBpwnsBpupBpuneBpukedBpuffyBpuffsB	publishedBpublishBprovingB	providingB	providersBproudlyB	prototypeB	promisingBprofilesB
productionB	producersBproduceBproblyBprizeBprivacyB	priscillaBprintsBprintingBprinceB	primaveraBpricedB
pretendingB
presentingBpresentationsB	preparingBpreparedBpremiumBpremiereBprematurelyB	preferredBpredictableBprankBpradaBppBpowerfulBpowBpoutBpouredBpourBpottyB
portugueseBportlandBportableBporridgeBpoorlyBpoopyBpoolsBpolyB	pollutionBpoliticiansB	politicalBpolicyBpolaroidBpoetsBpoemsBpoBpmsBplugsBpluggingBplotsBpleaseeeBplayoffsBplayoffBplagueBpixiesBpintBpilotBpillBpiercedBphysioBphysicalBphraseB
philosophyBphilosophicalBperuBperryB
perfectionBpepsiBpepBpeepBpeelingBpeedBpcdBpayedBpaycheckBpaxBpawsBpatronBpatrickBpatientsBpatchBpastorsBpasteBpassionBpasoBparvoBpartyinBpartiedB
particularBparkerBparkedBparB	paperworkB	paparazziBpanteraBpaneraBpalsBpaintedBpacquiaoBpacmanBozzyBoysterBoyBoxfordBowwwBownsBoviB	overratedBovaB
organizingBorganicBorgBoreosBoralBopsBopposedB	operationBooopsBooohhhBoneselfBoneeBomgoshBomBolympicBolivesBoldsBoldiesBojBohwellB	officallyBofferingBofcourseBodBoctBoccasionallyBnytBnutellaBnthBnpBnowiBnovaBnovBnorthernBnormB
noooooooooB	nooooooooBnooooooBnoodleBnokiaBnoisyBnoisesBnoeBnobodysBnkBnjoyBninjaBningB
nightshiftBnightlyBniggasBnicksBnicestBnicerBnicBnfgBnewportBnewbieBnetballBnephewsBnemoBnekkidBneedingBnauseousBnascarBnasalBnannaBnamanBmyrtleBmyaBmxBmutualBmustveBmusicmondayB	mushroomsBmurrayBmuaBmriBmrazBmphBmozartBmozBmourningB
motorcycleB	morrisonsBmorrisBmoringBmoniesBmolarBmohawkBmockBmochaBmoanBmnBmmsBmmmmmBmitchBmitB	misplacedBmiseryBmirrorsBmirrorBminimumBmimisBmillionaireBmillerBmileysB	migrainesB	microwaveBmicroBmgmtBmgBmessyB
mentioningBmentBmeltingBmelissaBmeiBmeesterBmeeeeeB
medicationBmedBmeatBmeanieBmeaganBmcflysBmbaBmaydayBmattressBmasteredBmassacreBmashedBmasculinityB	marvelousBmarinaBmariahBmapsBmansBmannnnBmannersBmammaBmamiBmalibuBmajorlyBmainlyBmaidBmagnificentBmadridBmadreBmadnessBmaddBmacsBmachinesBmaccysBmaamBlyBlushBlunaBlucyBlsBlouBlottBlotionBlosBlorraineBlopezBloooveBlooooongBloooolBlooongBloolBlolsoBlolllBloadedBlmBlizBliteBlistsBliquorBlipstickBlinkedinBlincolnBlightingBliftingBliamBliBlexusBletdownBleslieBlenovoBlendBleightonB	leicesterBleedsBleatherBlearntBleahB
leadershipBlcBlaxBlawsBlavaBlaunchedBlaterzBlatersB	lastnightBlashesBlaserBlaneBlandlordBlandlineBlacroixBkyBkrisBkoolBkongBknowiBknitB	knackeredBkittykatBkitchenfireBkitBkindleBkindergartenBkillinBkillboyBkilkennyBkfcBkeychainBkentBkbBkavyaB	katherineB
kardashianBkanBjvBjuzBjumpedBjudyBjsBjqBjpgBjonaswebcastBjokingBjokerBjohnsonBjogBjipBjfBjerrysBjeremyBjelloBjealousyBjdBjcBjbsBjaykBjauntyBjanuaryBjambaBjajaB	jailbreakBjaiBjackieBjackedBizzyBizzardBizBitttBitsucksBitimBitchingBitchesBitandBisaacBirvineBironyBironicBiqBiplayerBioB	involvingBinvitesBinternalBintentionallyBintendedBinspirationalBinsomniaBinsanityBinnocentBinnBinkBinjuryBinfestedBinfectedBindyB
industrialB
indulgenceB
individualBindiansBindexBincomeBincludesB	inabilityBimpressionsBimmB	imaginaryBimagesBiloveyouBiconsBickyBicBibmBiamBiaBhypeBhvBhutBhusbandsBhurtinBhurrahBhundredBhumourBhumidityBhumbleBhulkBhugglesBhubbysBhubBhttpunuBhttptinyurlcomqBhttpplurkcomprrBhttpgykdnetB
httpbitlyrB
httpbitlyaB%httpappsfacebookcomcatbookprofileviewBhtcBhowardBhousesBhotterBhorrificBhorriblyBhordeBhopinBhopelessBhoodieB	honeymoonBhomiesBhollandBhobbyBhmvBhiveBhittinBhintBhindiBhimymBhikingBhiiB
highschoolBhhahaBheyaBhelmetBheheheheBhehehBheeeyBheavenlyBheatedB	heartburnB
heartbreakBheapBhealingB
headliningBheadlineBhazBhayesBhashtagBhashBharoldBharmBharlemBhardwareBharBhappendBhangoutBhamiltonBhallwayBhallmarkBhairdresserBhaikuBhahhaBhahaiB	hahahahahBgumsBgueBgsBgrumpyBgrubBgrrrrrBgreekBgreedyBgreaterBgraphicBgransBgrannyBgranBgrammarBgrahamB	graduatesBgradesBgradersBgraderBgrabbingBgrabbedBgpBgovBgotchaBgoooooodBgooooBgoogledBgolfingBgoiBgoddamnBgoatBglutenBglueBglimpseBglenBgivinBgimmeBgilmoreBgiggleBgiganticBghzBgeorgiaBgeoffBgentsBgenevaBgeekyBgaugeBgatherBgatesBgateBgarlicBgardensBgaloreBgalBfuzzballBfuriousBfurBfunnnnBfunctioningBfunctionBfuelBfudgeB
frustradedBfruitsBfringeBfreshmanBfreezeBfreewayBfrecklesBfreakyBfreakedB	frameworkBfourteenBfoughtBfosterBfortBforsureBformulaBforecastBfordBfolkBfoggyBfoamBfnBflushBfluidsBfloodBflirtingBflippinBflatsBflagsBflagBfkinBfixingBfirmwareB	fireworksBfinnaBfinestBfilthyBfiguresBfifthBfieldsBfiddlerBfibeBfewerBfetchBfemalesBfebBfearsBfateBfascinatingBfarmerBfanclubBfamiliesBfameBfallsBfallowBfalloutBfallenBfaireBeyebrowsBextendedBextendBexplanationBexpensesBexoticBexitedB
excitementB	exceptionBexampleBewwwB	evolutionBeverrBevansBevaBeurukoBeuBetBestBerrBermBericaBereBeraBequalBenvironmentBenthusiasticB	entertainBenteredBengagedBenemyB	employeesBembarrassingBembarrassedB	elsewhereBelsesBelliottBelementBelectricityBelectionBelaineBegoBefronB	effectiveBeffectBedwardsBedwardBeditorsBedenBecBearnedBearnBearliestBeagleB	eachotherBdylanBdvrBduperBdunkinBduBdslrBdsiBdrunkenBdrumsBdrowsyBdropsBdriveinBdripBdressesBdresserBdraggingBdraftB	downloadsBdownerBdougBdoublesBdoubledBdoraBdoomBdoodBdonateBdominosBdomesticBdoggieBdoesnBdocumentaryBdnsBdiyBdivaBdistractingBdistantB
disgustingBdiscussionsB	discountsBdiscountBdiscBdisappointmentB
directionsBdimpleBdigginBdigestBdieingB	didnï½tBdiaryBdianaBdeyB
developingB
developersB	developedBdesignsBdesignerBdesignedBdeservesBderbyBderB
depressionBdentistsBdeliverBdelishBdeliBdeerBdeedBdecBdebateBdearlyBdbBdatsBdatingBdashBdansBdangerBdandyBdancesBdampBdamagedBdaisyBcutsB	customersBcustomBcurlingBcultBcuddlingBcucumberBcubicleBcubeBcubbiesBcubaBctrlBcssB	crochetedBcrispsBcrispiesBcriminalBcribBcreepedB	crazinessBcravingsBcraneBcrackedBcrabsBcpBcouponsBcouponBcountyBcounterBcottonBcostcoB	corporateBcordsBcordonBcoralineB
copenhagenBcooperatingBconversationsB
convenientBcontemplatingBcontainBconstructionBconsolationB	conqueredBconfuseBcondolencesBconceptBconanBcomputeB
completingB
compensateB
compatibleBcompareBcompanysB	committedB
commercialB
commentingB
commentaryBcommBcomfortBcolumbusBcolorfulB
collectingB	colleagueB	coldstoneBcofBcodBcoBclothingBclassyBclassicsBclarkBclaireBclaimsBclaimBcivicBcircuitBcircleBcindyBcigBciderBchunkyB	christinaBchosenBchopsBchoppedBchoicesBchilisBchicksBchicaBchewBcherryBcheesecakesBcheeseburgerBcheeksBcheekBcheddarBcheatingBchcBchaseBcharlesBchargesBchannelsB	championsBchadBceremonyBcentBcelebritiesBccBcbBcausesBcastleBcartBcarolBcardiffBcaramelBcapsBcapeBcanonBcanadianBcameronBcageBbyeeeeeBbuzzedBbutiBburyBburstBburritosBburbankBbunniesBbumsBbumpsBbumpingBbumpBbuggyBbuggingBbuffetBbsgBbrownieBbrookeB
bronchitisBbronBbroadwayBbritishBbritBbrisbaneBbrightonBbrighterB	brightensBbriBbrewingBbreezyBbreedingB	breathingBbreastBbranchBbraidBbracketBbraceletBboyleB
boyfriendsBboxersBbowsBbowBbouncyB	botheringBbordersBboothBboooooBboohooBboobooBbonjourBbomBboltBboldBboardsBboardingBblushingBbluntBblondBblogtvBbloggerBblipfmBbleedingBblackberriesBbkkBbittenBbitingBbirthBbipolarBbinBbicycleBbibleBbiasedBbffsBbewareB
bestfriendBbenefitBbelongsBbelfastBbehaveBbeesBbeersBbeefBbeckyBbecBbebeBbeatwittypartyBbeatlesBbeanieBbdBbballBbatsBbartBbarryBbarnesBbannedBbangingBbanginB	bandwidthB	bamboozleB	baltimoreB	ballerinaBbaliBbalconyBbakaBbaileyBbacteriaBbacksBbackpackBbachBbabygirlBawwwwwwwBawwwhBawesomeeBawefulBawareBawaitsBawaitingBavenueBavailBautomaticallyB	automaticBaudreyB	attractedBattendedBattachedBathensBasylmBaswelBasksBasadaBartworkBartsBarkhamBargueBarenaBaprilB
apprenticeBapplyingBappliesB
appearanceB	apologizeBaolBanythinBanyhooBantsBannualBannoyBannouncementBannounceB	animationBangleBangelaBandersonBanatomyBamusedB	amsterdamBampBamongstBamichaelBamazeBamandaBalpineBalphaBalohaBallowBalllBalleyBallergyBaliensBalexisBalaskaBajBaimingBahhhhhhhBahahahBahahBagileBagentBagenciesBafricanBaeBadsenseBadoptedBadobeBadmireB
additionalBaddictBadaBactionsBachieveB
accomplishB	absolutlyBabcB
abandoningBaaahBï½ï½Bï½youBzvBzuneBzuluBzoBzfxBzaByummmmByukByouyouByouuuB	youngsterByoumyByoooByokoBynBymBylBykByippeeeByipeeBygByessssByesiByeshByesbutByeeeeahByeeByearoldB	yearbooksByeahimByeahhhhhByeaahByeaaahByeaaaahByeaaaByeaaByarnByardsByaoByallsByachtByaaaaaayB	yaaaaaaayBxxxxxxxxBxtBxraysBxoxoxoBxmasBwwwyoutubecomwatchvBwweBwusBwthemBwritesBwritersblockBwreckBwrapsBwrappingBwowyouBwoundsBwossyBwosBworshipBwormsBwormBworkwhatBworkunfortunatelyBworktooBworkthinkingB	worksheetB	workplaceBworkloadBworkkB	wordpressB	worcesterBwoopsBwooooooBwooooBwoolB	woodstockBwongBwompBwohooBwoahBwnBwmeBwldBwlB
witnessingB	withdrawsB
withdrawalBwitchBwiserB	wisconsinBwiresBwipingBwiperBwinwoodBwingstopBwindsorB
windshieldBwindsBwindozeBwindingBwilB	wikipediaB	wikileaksBwifesBwietersBwierdBwichBwhyyyBwhysBwhoveBwhoseBwhoresBwhootBwhoohooBwhitsunB
whisperingBwhiningBwhineBwhereverBwherBwheeB	whatï½sB
whatsoeverBwhatreBwhatnotBwhatevBwhatchuBwhataburgerBwhalesBwhaleBwgnBwfBweï½reBwesternBweltsBwellityBwelliBwelcomedBweirdoBwehoBwegmansBweepsBweekmyBweedingBwednesayB	webdesignBwebcastBwealthyBwealthBwdBwbuBwazBwayyBwayneBwaxedBwaxBwavvesBwavedBwattsBwatsonBwatkinsBwatevaB
watermelonBwateringB
waterfrontB	waterfallBwasssupBwasnBwasherBwasabiBwarnerBwarmedB	warhammerBwardrobeBwanB
walmartcomBwalkinBwalBwakeyBwaittBwaitressBwaikikiBwafflesBwacomBwackyBwabbleBwaaahBvvBvrBvpnB	volunteerBvolBvoidBvoicesB	voicemailBvogueBvoegeleBvodafoneBvocalBvocabBvnBvividBvisitsBvisitorBvisitinBvisionB	virtuallyB	virginityBvirginiaBviolatedBvinylBvinceBvinBvimBvictimBvickyBviceBvibeBviBvfcBvetsB	veronicasBvermontBverBventureB	venezuelaBvendingBvelvetBvehicleBvegaBvcrBvcenterBvanessaBvalBvadosBvacuumedBvaccinesB	vacationsBuyBuuuupButterlyBussBusdBurvvBurlsBurgentBureBurbansBurbanBuptownBupstairsB	upsettingBupperBuppBupmaybeBupandBunusualBunreadB
unpleasantBunparalleledBunpaidBunopenedBunofficiallyBunoBunniBunnecessaryBunlovedB
universityBunityBuniteBunholyB	unhealthyBunfortunatleyBunfB	underwoodB	underwearBunderstandingBunderstandableB
underscoreBunderageBundB
unbearableBunavailableB
unansweredBunaBummmnnnBumbrellaB
ultrasoundBulanBughwhatBugghBugggBuffBudonBubBtyposB	typicallyBtypesBtypedBtyingBtxtingBtxtinBtwittertakeoverBtwittersphereBtwitterrB
twitterfonB	twittererBtwittaBtwittB	twiterfonBtwiterBtwinzBtwikiniBtwiiterBtwiggasB
tweetstatsBtweetinBtweetenBtweeBtweakingBtutoringBtutorBturtlesBturnoutBturkeyBtunnelBtunesBtunerBtumorsBtumorBtuhBtuesdaysBtucsonBttyBttoBttfnBtssBtsccBtrustedBtruongBtrunkBtrufflesBtrsBtroughBtroubleshootingBtroublesBtropicalBtrolleyBtriviaBtriumphBtrippingBtrioBtrilogyBtriggerBtributeBtrialsBtrendyBtrekkingB	treasuresB	treadmillBtravestyBtraumatizedBtransportationBtransparencyB
translatedB
transitionBtransitBtransBtraitorBtrainerBtrainedBtrBtowelsBtourneyBtouredBtouchinBtotalledBtotBtossedBtortillaBtorrentBtoroBtoreBtopshopBtoppingBtopgearB
toothbrushBtoooooooBtooiBtoobutBtonighBtomozB	tommorrowBtomatoesBtollBtoiletsB
todayyyyyyBtoastingBtoasterBtkBtivoBtitlesBtitanicBtitaBtissuesBtissueBtiskBtireddBtippingB	tinternetBtimeeeBtimberlakesBtiimeBtigersBtiestoBtiesBtideBtickledBthyB	thursdaysBthudBthrowingB	throbbingBthroBthreeeBthreadsBthoughimBthoughhBthotBthompsonBthoiBthmBthistleBthingieBthereiB	thereforeBthereeBtherebutBtheatersBthanxxBthankiesBthangBthamesBtfBtextmateBtextinB	textbooksBtestersBtestedB	terrifiedBterrificBterriBterraBterabyteBtensionBtennantBtellyBteleportB	telephoneBteheBteethingBteenagerBteenageBteeB	techniqueB
technicianBteasingBtayoBtaylorsBtatumBtatamiBtastedBtasksBtapewormBtannedBtaniaBtameBtaleBtakehomeBtaipeiBtailBtabsBtabletsBtabBsytycdBsyncedBsymptomsBsyB	switchingBswimsuitBsweenyBsweeneyBswedesBsweatersBsweaterBswearsBswarmBswampedBswallowBsussB
suspiciousB	suspectedBsurrealBsurguryBsuprisinglyBsuprisedB
supportingB	supporterB
superpowerBsuperbBsupBsunsetBsunriseBsunniestBsundressBsumtimeBsumoneBsummitBsuitedBsuiteBsuitcaseBsuicideB	suggestedBsugarsBsuffersBsuckssssBsucksssBsuckaBsubtlyBsubscriptionB
subscribedBsubsBstylesBstumbleBstuffierBstudiosBstudiesBstruggleB	structureBstronglyBstrollBstrokeBstripperBstripeyBstringsBstrictBstressinB
stressfreeB
streamlineB	strategicBstrapBstraighteningBstormyBstormingBstonedB	stockholmBstitchBstintBstinkinBstingsBstingingBstilesBstilBstickamBstewartBstevesBsteveoBsteroidsBstepsBstepmomsBstefanBstaysBstationsBstashBstartinBstarringBstaringBstaplesBstaplerBstandsBstampBstaminaBstainedBsruBsriB	squirrelsBspyBspursBspriteB	sprinklerBspringsBspreadsheetsBspotsB	spotlightBsporkBsplendidBspiteBspinBspillingB	spielburgBspicedBspiceBspfBspewBspendinBspencerBspectacularBspeciesBspecialsB	speciallyBspeaksB	speakeasyB	sparklingBsparkBsparedBspankBspammerB	spaghettiBspaBsozBsowwieB	southlandBsouthernBsouthendBsosoBsortsBsorrryBsorrowsBsorriesBsorchaB	sophomoreBsophieBsophiaB
soooooooooBsooonBsoooimBsoonsoBsoonishBsolvingBsolvedBsolveBsoldiersBsolBsoiBsoggyBsofaBsodasBsodBsockBsoapsBsoakedBsnugglesBsnuggledBsnifflesBsnifBsneezedBsneezeBsnappingBsnappedB
smoothnessBsmoothlyB	smoothiesBsmokesBsmfhBsmellyBsmellingBsmashingBslyBslushBslumdogBslotBslippedBslidesBslicesB	sleeplessBsleeperBsleeeepBsleeeeepBslavesBslaterBskypingBskyeBskullBskippingBskippedBskinsBskinnyBskillBsketchyBsketchBskatingB
skateboardBsjBsixthBsistaBsissBsiriBsippingBsinsBsinkBsingstarBsinglesB	sincerelyB
simplicityBsilverlightBsikeBsigningsBsickyBsicBsiaBshyBshwBshutsBshuldBshudderBshucksBshrugBshowfinallyB	showeringBshoutingB	shouldersBshoudBshoreB
shopaholicBshooterBshooBshockingBshoBshldBshizzleBshittttBshishB	shirtlessBshirleyBshipwreckedBshipmentBshinningBshinesBshiftingBsherbertBsherBshelterBshellsBshelfBshelbyB	sheffieldBsheetsBshawtyBshavedBsharonB	sharapovaBshanBshakyBshaanxiBsgtBsfoBsezBsexBsevereBseventhB	seventeenBsevenBseussBsettledBsessionsBseshBservedBserenaBsequelsB
seperationBseoBsentimentalBsensibleBsensibilityB	sensationBsenBseminarsBselvesBsegmentBseesmicBseekingBseeinBsectionsBseatingBseamlessBscumBscrewingB
screenshotBscreaminB
scratchingB	scratchesB	scratchedBscottyBscottsBscottishBsconesBscionBsciB	schoolingBschooliB	schoolersBscentsBscentBscenieBscenarioBscarredBscariestBscaresBscaleBsaynowBsayangBsavvyBsausagesBsauBsatsB
satisfyingB	satelliteBsatanBsashimiBsarsBsarcasmBsaoBsanfranBsaneBsandyBsandmanBsanaBsamsBsameeBsaluteBsaintsBsailBsaferBsadsBsaddoBsadderBsacredBsabbethBrzBryansBruthBrustyBrussiansBrushingBrulerBruledBrubsBrubberBrssBrsmvBrpmBroyBrowingB
roundtableBrouletteBrotationBrosemaryBroseanneBroscoeB	roommatesBrooBromeBrollerbladingBrohanBroflmaoBrodneyBrodeBrocioBrobotBrobinsBrobinaBrobbieBrobbedBroastedBroadsBrllyB	riversideBritzBriskingBrileyBrightsBrightlolBrighBrifleB	rickbakerBribenaBrhubarbBrfBreyesBreyBrewriteBreviewedBreunitedBretweetsB	retrieverBretreatBrethinkBretailB	restoringBrestartBresortB
resistanceBresetBrerunsBrerunB	rereadingBrequiredBrequireBrequestsBrepublicBrepostB	repiercedB
repeatedlyBrepairedBrentalBrenewBremediesBremberBrelieveBreliB	relegatedBreleasesBrejectsB	rejectionBreinstalledB	reinstallB
rehearsingBrehabBregisterBregionsBregimeBregalBregBrefugeeBrefsBrefrigeratorBrefluxB	referringBrefBreesesBredyedBredskinsB	redirectsB	recoveredBrecoupB
recordingsB	reconnectB
recognizedBrecognitionBrecapBrecallBrecBrebornBrebootBrearrangingBrearBreaganBreadyyyBreactBrdaBrazerBrawrBravenBratingsBratedB	raspberryBrashidBrashBrareBrapidsBrangerBrangeBrallyB
rainforestBrainbowBrahBraftBraffleBracquetBracoonsBracketBracistsBracersBqxBqwBquï½BquitsBquinnBquieroBqueueBqueryBqueerBquashedB
qualifyingBquadBqsBqotBqoodBqoBqnBqdobaBpyrBputerBpusherB	purposelyBpunchingBpunBpumpsBpumpkinBpulpBpuertoB
publishingB
publishersBpubliclyBptsBptaBptBpsyBpspBpruningBprovidesB
providenceBproverbsBproteinB
protectionBprotectBprosBproppedB	proposalsBpropertyBpropBpromisesBprologueB	projectorBprogressiveBprogramsB
programmerBprofessionalsB
professionBproductivityBproducerBprodigyB
processingBproboblyBprixBprismBpriorB	princetonBprimeBprimaBpricingB
previouslyBpreventBprettierBpressieBprescriptionBpreschoolerBprepromBprepBpreorderB
predictingB	predictedBpredictBpreciateBprawnsBpraisingBpragueB
practicingBpplsBpowersB
powerpointB	powerblogBpovertyBpovBpoutsBpoursBpoundBpotusBpostersBpostalB	possessedB
positivityBposeB
portsmouthBportoBporterBportB
popularityBpopsicleBpoppinBpoorerBpoopingBpoopedBpoofyBpoochB	polyesterBpoloBpollyBpollardBpokesBpokedBpokeBpointyBpoiaBpoetBpodBpmslBplzzBpluggedBpluckBplceBplaytimeBplatoBplatformBplatesBplasticBplasterBplantingBplanterBplacedBpkuBpittyBpitcherBpitasBpirateBpipersBpipeBpinkyBpinkpopBpingpongBpineBpinchedBpinchBpimpBpillowsBpigeonBpiercingBpickleBphuketB
photographBphobiaBphilsBphillipsBphillipBphiladelphiaB
phenomenalBphatBpharmacyBphantomBpgpmBpfBpeteBpervsBperspectiveBpersonsBpermitB
permissionBpermanentlyB	permanentBperkyB	performedBpercentBpeppersB
peppermintBpennsylvaniaBpendantBpenaltyBpembrokeBpegBpeekabooBpeekBpedroB	pedicuresBpebblesBpeanutsBpeakBpdBpaypalBpaymentBpaydayBpavementBpauseBpastyBpastorB	passwordsBpassportB
passengersBpasadenaB	partyyyyyBpartyyyyBparentalBparcsB	parasitesB	parallelsBparallelBparacetamolBpapiBpapasBpaoBpantryBpanthersBpanelBpalmsBpalinBpaleBpalaceBpalaBpakistanBpaisleyBpairsB	paintingsBpaigeBowwBowtBoverwhelmingBoverwhelmedBoverseasBoversBoverloadBoverkillB	overjoyedBoveriBoverheatingBoverdueBovBouttttBoutlineBoutletBoutingBoutfitsBoutdatedB	ourselvesBouiBouchiesBouchieBoscarBorthodontistBorphanBorilliaBorientationB	organizedBoreoBoregonBoracleBoqBoptionalB
optimisticBoptedBoppositeBoperationalB	operatingBopensBopBoopsieBooooooBonwardsBontarioBonscreenBonoBonnnnBonionsBonethoseBonesiesBoneiBondemandBomwBomletteBomgshBomggggBomeletteBollBoldestBokiBokcBokayyyBokayyBohmygodB	oficiallyBofficesBofficerBoffendBodysseyBoccuredBobjectBobBoatmealBoasisBoaklandBnyquilBnxBnuttinBnuthinBnursesBnurburgringBnunBnumBnuggetBnudgeBnuBntoBnprBnowwwBnowsheB	nowprettyBnowjustBnowitBnowadaysBnovelsBnouB
nottinghamBnottBnotionBnotificationsBnoticesB	notebooksBnosBnormsBnonsenseBnonmediaBnonlongBnomatterBnoidaBnoiceBnogoBnogginBnodBniteiBnitaBnitBnirvanaBniqhtBnileyBnikoBnikkiBnikeBnightttB	nightlifeB	nightlastBnightiBnighBnicoBnickedBnicholasBniceeeeeBniceeeBniamhBnhBngaBnewlyBnewishBnewbornsBnewbornBnewarkBneuroanatomyBneuroBnetworksBnettlesBnetherlandsBnetbookBnerveBnerdyBneiceBneglectB
negativityBneedlessBnedBnearestBncBnaziBnawwBnavyBnaughtyBnatyB	naturallyBnaturalBnationBnatieBnashBnapsBnapaBnaoBnancyBnamingBnambuBnamaskarBnaiBnaeBnadiaBmyyB
mysteriousBmystBmwahahaBmvBmusterB	mustachesBmussoBmusingsBmuseumBmuseBmusclesBmurphysBmurderedBmunaBmultiBmulchBmugBmuBmtnBmpgBmozartsBmowerBmovietooBmovieingBmovementB	motorwaysB	motorbikeBmotherï½sBmossB
mosquitoesBmosquitoB	morrrningBmorningiBmorleyBmorgenBmorgansBmorBmoppingBmooreBmonthlyBmontannaBmonstersBmonoBmonkeysBmonfriBmonctonBmomiesBmoldovanBmojitoBmogwaiBmodestBmmotBmlbBmixingBmitchellBmisunderstoodBmissusBmisssBmissionsBmishBmisconstruedBmisBmirandaBmioBminneapolisBminimalBmineeBmindfulB	milwaukeeBmillsB
milkshakesBmilanoBmikesBmikeeBmiiBmigranesBmidwayBmidtermsBmidstBmidniteBmidjuneBmicheleBmichaelsBmgaBmeterBmetallicBmesBmeredithBmereBmerB
meningitisBmenaceBmemyBmemesBmemeBmelsBmeinB	meeeeeeeeBmeditateBmedalB	meatballsBmeasureBmeannBmeadBmdBmcmuffinBmcmBmcflyyB
mcflyandjbBmaï½BmayoBmayersBmayerBmaxinBmaximBmaxedBmatthewsBmatildaBmateyB	maternityBmatchingBmatchesBmatchedBmastersBmartaBmartBmarshallBmarketsBmarioBmarinesBmareBmarcoBmarathiBmarBmanicsB	manhattanBmangBmammalsBmalteseB	malaysianBmalaysiaBmalariaB
makerfaireBmakBmaineBmailsBmailedBmaiBmagnetBmagnersBmagentoB	magazinesBmadresBmadlyBmadisonBmaddiesBmacaronsBmacarenaB	macadamiaBmaaanBmaaaaaanBlynneBlydiaBluxuryBluvvvBluvinBlureBlungB	lunchtimeBlunchesB
lunchbreakB
lumberjackBluffBlubBluBltBlowestBlovinglyBloveyBloveloveloveB
lovelinessBloveliesBloveeeeeBlousyBlouisBloudlyBlotteryBlotsaBlotrBloooooveB	loooooongBlooolBloomingBlookoutBlooBlonleyB	longboardBlolsBlololBlollllBlokBloicBloftBlocalsBlobbyBloadersBlngBlmkBlmfaooooBlmfaooBlmaoiBllBlizzieB
livingroomB
litterallyBlitleBlipsBlintBlineupBlimoBlimitsBliftsB	lifesaverBliesgirlstellBliekBliceBlibertyBlibbyBliaB	lexingtonBlevelsBlettuceBlettinBleonardoBleonBleoBlensesBlensBlennyBlengthBlemsipBleapBleannBleanBleakedBleakBleafsBleadingBleadersBlbBlazingBlayneBlayinBlaydownBlavenderBlaurensBlatterBlatinBlasagnaBlarsBlarryBlaraBlarBlappytopBlapitB	laodiceanBlanceB	lancasterBlamsBlaminateB	lamesauceBlamerBlambsBlalaBlahiranBlagB	lafayetteBladysB	ladyhawkeBladybugBladieBlabsBkuBktBkrogersBkristinBkrispyBkremeBkrakenBkpBkoreansBkobeB	knoxvilleBknowwwwBknowwwBknowimBknottsBknooowBknockoutBknockingBklutzBklemmBklB	kiyosakisBkiwiBkittensBkindnessBkimmyBkimbaliciousBkimbaBkillenBkiddiesBkickoffBkickassBkiBkhanBkgsBkgBkeywordBkeyedBkevBkettleBketchupBkeshiaBkernelBkennysBkennelBkelliBkelleyBkelBkdgBkbsBkazimBkayoBkayleighBkayaBkawawaBkatyBkatiesBkarenBkansasBkaneBkalokaBjustwatchedBjustintvBjuniorsBjunejulyBjumpsBjulysBjulietBjulieBjuliaBjugaBjoysBjoyfullBjournalistsBjourBjossBjosiahBjosephBjoseBjoolsB	johnathanBjodiBjjjBjillianBjillBjiBjfgBjewelryBjesterBjessieBjenniferBjennBjenkinsBjelousBjejeBjeffreeBjeepBjediBjealousiBjazzyBjayceesBjawB
javascriptBjasonsBjasBjaredsBjarBjansenBjanesBjaneiroBjamminBjammiesBjamiesBjalanBjakartaBjagerBjacksonsBiyaBiwonderBiwasBivyBivaBityouBitlolBititBithowBitaggBispBisisBirresponsibleBirregularlyBirisBircBiraBipaBionbasedBinvitationsB
investmentBinvestigatedBinvestigateBinvestBinventorB	inventionBinventedBintroducingB	intriguedBinterviewedBinternsB	internetsBinternB	interfaceBinteractiveBintentBintelligentBintelB	integrityBintakeB	insultingB
instrumentB	instituteB
installingBinspiteBinsistBinsanelyBinitialsBinitialBinhabitBingBinformedB	influenceBinfactBindulgeB	indonesiaBindiesBincreasinglyB
increasingBincreaseBincorporateBinclinedBincaseBinaBimputB	impromptuBimposeBimportedBimportantlyB
impersonalBimovieBimmuneB	immediateBimacsBillnessBijBiightBihaveBihateBignorantBiglooBigetBidealBicurveBickBichigoB
hystericalBhypedBhurdleB
huntsvilleBhunkBhungerBhummmmmBhummaBhumbugBhumansBhumaneBhudgensBhuaaaaBhttpwwwempireonlinecomBhttpwwwdesignianlBhttptumblrcomxBhttptinyurlcomreBhttptinyurlcomrBhttptinyurlcompBhttptinyurlcommxlcuvBhttptinyurlcomlBhttptinyurlcomdhpolBhttptinyurlcomcfBhttptinyurlcomaxsujxBhttpsnipurlcomhqBhttpshorttoBhttppromotionitaggcomBhttpplurkcompwyBhttpplurkcompswBhttpplurkcompsvsBhttpplurkcompsvmBhttpplurkcompsvBhttpplurkcomprqoBhttpplurkcomprqBhttpowlyBhttpmypictmeBhttpmylocmegBhttpiBhttpdiggcomdBhttpbudurlcomBhttpbitlysnjenB
httpbitlysB
httpbitlymB
httpbitlykB
httpbitlyjBhttpbitlyhhigdB
httpbitlyhBhttpbitlyafBhteBhsBhowreBhowieBhowevaB	houseworkBhoursnzBhottestBhotnessBhospBhorrorsBhookyBhonestyBhometownBhomesickBhomepageBhomeiBhomeeeeBhomeeBholdinBholBhogBhoesBhoboBhitmanB
historicalBhissBhiringBhiredBhinderBhimiBhiltonBhillsongBhikeBhiiiiiiBhighestB	hibernateBhiatusBhhBhgtvBheyyyyyBheyyaBhetB	hereeeeeeBherebutBhendrixBhenBhelsinkiBhellotxtBhellooooBhelenBheirBheinekenBheidiB	hehehehehBheheeeBheeeeyBheavensBheartwarmingB	heartlessBheartbrokenB
healthcareBhealedBheadsupBheaderBhcBhbuBhaywardBhaylesBhavenBhaveeBhatsBhaterBhatchBharvardBharrisBharmlessBharlowBharleyBharbourBhannaB	hangoversBhandzBhandmadeBhandbagBhanB	hamburgerBhamBhaltBhallucinationBhallsB	halloweenBhalfwayBhalfassedlyBhaleyBhairstylebutBhairdressersBhairdoBhahhaaBhahahahahahaBhackerBhabitBhabboBhaaB
gymnasticsBgyBgwBgutterBgutenBgusBgunsBgummyBgumboBgumBguinnessB	guaranteeBgtgBgtalkBgtaBgrumblesBgrumbleBgrubbyBgrrrrrrrBgrrhBgrowlBgroomBgromitBgrizzlyBgrinningBgrimBgriffinBgretelBgretaB	greatnessBgreatlyBgraphicsBgraphBgrantB	grandkidsBgrafBgradingBgraciousBgrabeBgpuBgownBgovtB
governmentBgotoBgorillaB
goooooooodB	gooooooodB	gooooodddBgooooodBgoodiBgomezB	godfatherBgoddessBgodawfulBgoalsBgluedBglowingBglovesBgloveBglossBgloryBglobeBglitterBglitchBglandsBglBgivBgirliesBginaBginBgilbertBgilaBgigglingBgigglesBgiantsBghettoBgfsBgetherBgetchaBgermsBgeometryBgentlyBgenesBgenderBgemsBgeeeBgeeBgearsBgeBgaysBgawdB	gatheringBgaskarthBgarnerBgarbageBgapBgantBgameboyB	galacticaBgainBgahhhBgableBgabbaBgaahBfzoBfxBfwdBfuzzyBfutileBfussBfuseBfuntimeBfunnnBfunnierBfunnBfunkBfundsB
fundraiserBfuknBfukinBfuckkkBfubumvcBfuBfruityBfrownBfrostBfroBfrisbeeB
friendshipBfriendorfollowcomB	fridayandBfrequentBfrenzBfreezesBfreeeBfreaksBfreakBfrappuccinoBfranklyBfranBfpBfoxyBfountainB
foundationBfotoBfortuneBfortunatelyB	fortunateBforteBforrealBformulasBforgetsBforcastB	forbiddenBfootyB	footprintBfoolishBfondueBfondBfollowupBfollowfridaysBfocusedBfmBflysBflourBfloorsBfloodingBfloodedBflippingBflicksBfleshBflavourBflavorsBflavorBflashingB	flapatacoBflapBflameBfknB
fixrepliesBfishyBfishesBfisherBfischerBfischBfirtsBfirmlyBfirewireBfiresBfionaBfinlandBfinishesBfingernailsBfinalyBfinBfilterBfilBfightinBfiftiesBfiestaBfiddleBficBfiascoBfianceBfiBfgxdBfgsBfeversBfestivitiesBferryBfernandaBfenderBfeltedBfellowsBfellasBfellaBfelineBfeedsBfeederBfeeBfeaturedBfdBfckingBfavsB
favouritesBfavourBfatigueBfathomBfastestBfashoB	fashionedBfartedBfartBfarmersBfareBfantasyBfantaBfallonBfallinBfakesBfairnessBfadeB
fabulouslyBfaB	extensionBexportB	explosionBexplorerB
explicitlyBexplainsBexperimentalBexperiencesBexpenseBexpectationsB	expansionBexpB
exercisingBexcusesB	excursionBexcruciatingB	exclusiveBexclamationBexceededBevryoneBevrBevieBeveryoneeeeeB
everybodysBevertonBeverrrBeverbodyB
eventhoughBeuphoriaBethicsBethanB	eternallyBetaBestimateBestherBestasBessaysBerrorsBernieBermmB
erinchardeBerickaBeraseB
equivalentBeqBeoBenvironmentalB
enthusiasmBenoughtBenginesBengineerBengageB	energizedBendureBendorsementBendometriosisB	endlesslyB	encourageBencoreBemployerBempathyB	empathiseBemotionsBemotionallyBemergeBembassyB
embarrasedBemailingBemailedBelvisBelmoBelliotBelkBeljB	elizabethB
eliminatedBelevenBelevatorBeleganceBekBejBegBeffyBeffortsBefBeeeeeeeBeeeeBedwinBeducatedBedmontonBeditsBeddyBedcB	economicsBeasternBeaseBdynastyBdyeingBdyBdwBduvetBdutiesBdutchBdustbinBdurinBdurianBduoBdunnBdunkBdumpedBdumboBduetBdubbedBdubBdrummersBdruggedBdropedBdroolB	drizzlingBdrizzleBdrivinBdriedBdrewsBdressingB
dreamwidthBdreaminBdreamedB
dreadfullyBdreadedBdrawnBdrawerBdratBdrakeBdrainedBdrainBdownsB
downloaderBdownfallBdownedB	doughnutsBdoughB	douchebagBdoubtfulBdotsBdotaBdoseBdonï½tBdonsBdonnaBdonationBdomeBdomBdolphinBdoggyBdoeBdodgyBdodgingBdodgerBdocumentationBdocksBdlBdjsBdjingBdixonBdivineBdisturbanceBdistributionBdistractionBdistractB	distancesBdissapointedB
disposableBdisorderBdismalBdiskB
dishwasherB	discussedBdiscriminationB
discretionBdiscoverBdiscouragingBdiscouragedBdisasterBdisagreeBdisabledBdirtBdirectorB	directionB	directingBdipsBdippinBdiosBdintBdinnersBdinerBdindinBdimplesBdilemmaB
diggnationBdifficultiesBdifferntB
didgeridooBdiceBdiasBdiapersBdianeBdialBdgBdfBdezBdexterBdevsBdevicesBdevelopBdevBdetoxBdetourB	detentionBdestroysBdestroyBdespairBdesktopsBdesertBdescribeBderekB
derbyshireB	depressesBdepositsBdeplurkB	dependingB	deodorantBdentBdennysBdennyBdeniedB
democraticBdelsBdelaysBdelBdefragBdefineBdeffoBdefenseB	defendingBdefendBdefeatedBdeeplyBdeeperBdeeeeseartedB
dedicationB
dedicatingB
decreasingB	decoratedBdecodeBdeclinedBdecidingBdecidesBdecentlyBdecemberistsBdebutBdebussyB	debuggingBdebbieBdebBdeathsBdeanB
dealershipBdcdBdazedBdayyyBdayweekBdayssssBdayssBdayneBdaylightBdayaBdawgBdawBdavidsBdatedB	databasesBdasBdartsBdarrenBdarlinBdarlBdarknessBdanyBdannysBdanicaBdancerBdancedBdanaBdampenBdamnnnBdamnBdaleBdaisiesBdaddysBdadaBdaaayBczechBcysticBcynicalBcwBcvsBcuzzBcuuuuteBcuterBcustardBcussBcurvesBcuredBcupsBcupboardBculturalBcudveBcuddlesBcubesBcuBcrutchesBcrumpinBcrumblesBcrsBcrowdsourcingBcrowBcrossfitBcristalBcrispyBcringeBcrikeyBcricketBcricinfoBcreeperBcreamsBcrazyiB
crazyangelBcraziiBcrazierB	cranberryBcrampingB
craigslistBcrackersBcpsBcoxBcowboyBcoversBcourtesyBcouplaB	countriesBcougarBcostlyBcosplayBcoryB	corruptedB	correctlyB
correctionBcoronaBcornwallBcornerstoneBcoreyBcordovaBcordBcopiedB	cooperateBcoopBcooooooooolBcooolBcoolnessBcoolioB
convertingB	converterB	convertedB
conventionBcontroversialBcontributorsBcontraryBcontinuallyBcontemplateB
contactingBconsumptionB
conspiracyBconsistBconsiderablyBconservativeBconnectionsB
connectingBcongratulatoryB	congratssB	confusionBconfusinBconflictBconfigB	confidentB
confidenceBconfessionalBconfessBconfBconeBconditioningBconcurBconcertsB	concernedBconceptsB	computingB
compromiseBcompositionBcomplimentsBcomplexB
complaintsBcompetitiveB	companionBcomonBcommunicationBcommitmentsBcommingBcommercialsBcommandsBcommandBcomebackBcombineBcombinationBcolumnsBcoloursB	colouringBcolossusBcolossalBcolorsB
collectiveB	collapsesBcollaborationBcolderBcolbertBcolaBcoffeBcodyBcocoaBcocoBcobrasBcoatedBcoachesBcnaBcmBclutchesBclumsyBclothBclosureBclosetBclosesB	closenessBcloselyBcloneBcloggingBclimbsBclickingB	clevelandBclemsonBclearingBcleaninBcldBclawsBclaudiaBclaudeB
classmatesB	classmateB	classicalBclashBclaptonBclancyBclairesBclaBcitizenBciscoBcinemasB
cincinnatiB	cigaretteBciciBciaoBchuB
chroniclesBchrissyBchowderBchoppersBchopBchompBcholesterolBchokedBchloeBchitownBchiropractorBchiroBchiodosBchinoBchingoB	chillaxinB	childhoodB	chihuahuaB	chickfilaB	chickenedBchezBchevreBchesterBcherylBcherishBchennaiBchemoB	chemicalsBcheetosBcheetoBcheeseyBcheesesBcheerleadingBcheeredBcheatBcheapyB	chauffeurBchattinBchattedBchatsBchartsBchartBcharsB	charlotteBcharleyB
charlestonBchapmanBchaperBchaosBchanningBchandlerBchampionBchamberBchallengingB
challengedBchaletBchalBchachiBcfBcertBceraBceoBcenturyB
centigradeBcemetaryBcelticB	cellphoneBcelebrationBcelebBceilingBcebuBcaviarBcaveBcauzBcautiousBcausingBcatwalkBcaterBcatcherBcatalogBcastingBcastielBcassidyBcassBcaryBcartoonsBcarsonBcarryingBcarriersBcarrBcarntBcarnivalBcarneBcarmenBcarltonBcarlsBcarlileBcarlaBcarlBcareersB	cardboardBcarbonBcaptionBcaptainsBcaptainB
canterburyBcandleB	candidateBcandaceBcanberraBcanalBcampaignBcameoB	camcorderB	cambodianBcaloriesBcalorieBcalendarBcalebBcalculusBcaineBcaffeineB	cafeteriaBcacaBbyeeeeBbyebyeBbuzzingBbuysBbuuuutBbuttsBbutterfliesB	buttercupB	butbuttheBbustingBbusiestBburrBburpBburiedBbunsBbullsBbulliedBbulkyBbulgariaBbulbBbuglesBbuffettBbuffBbuenosBbucketBbubbaBbtchesBbscBbsbBbrushingBbrunoBbruisesBbrowniesBbrooksBbroodyBbroncosB	broadcastBbrixtonBbrittBbritneysBbrisBbrilliantlyBbrightlyBbrewedBbrewBbrekkieBbreedBbreakomgBbreakieBbreB	brazilianBbrawlBbragBboystownBbouquetBbouncingBbounceBboulderBbottomsBbossesBboseB	borrowingBborinBboreddddBboreddBborderBbopBbootcampBboooooooBbooniesB	bookmarksBbookmarkBbookingBbookbagBbonnieBboneBbondingBbondBbonBboiseBboiledBbodyshopBbobaBboaBboBbnlBbmthBbmBblurB	bluetoothB	blueberryBbluBblowoutBblowinBbloomingtonBbloomBblondingBblogherBbloggersBbloggerificBblockbusterBblisterBblergBblenderBbleBbldgBblazingBblastingBblairBblahhBbladesBblacksB	blackjackB
blackhawksBblackberrysBbklynBbitterBbitchyBbishopB	birthdayyBbiggieBbifBbienBbiBbhamBbhBbeverlyBbettingBbettaBbetosBberraBbentBbenjaminBbenedrylBbeneathBbenchBbenadrylBbeltBbellacullenBbelindaB	believingBbelievedBbelgiumBbeijingBbehavedBbehalfBbeginsB
beginningsBbeginingBbeetsBbeeryBbeeenBbedsBbeckB
beatweetupBbeardsBbeanBbdaysBbcozBbckBbbmBbattyB
battlestarB	batteriesBbathsB	bathroomsBbatchBbastosB
basshunterBbaronBbarleyBbargainBbarbequeB
bankruptcyBbankingBbangedB	bandwagonBbanBbambiBbamBballoonBbaleBbaldB	balancingBbailBbaiBbaguioBbadluckBbadgeBbadddB
backstreetB	backstageBbackkBbackedBbaccBbacardiB
babysitterBbabysitBayoBaxeBawhhhBawfullyB
awesomnessB	awesomelyBawesomeiBawayimBavoidingBavidBaveB
autofollowBautofillBautismBauthorsB	authorityBausBauntyBauntiesBauditBaudiobooBaudiBattractBatticBatmosBatlasBatlantaBathleticBasusBassureBassumptionsB
associatedBassignedBassholesBassassinBasideBasiansB
ashleighhhBashleighB	ashingtonBasdaBasbestosBarunBarthurB	arthritisBarsenalBarrestedBarrestBarreBarrangedBarghhhBargBardBarchitectureBarchiesBaraBarBapproveBappologyBappointmentsBapplyBapplaudBappearsB	appearingBappearedBappealB
appartmentB
apparantlyB	apatheticB	aparentlyBaotsBanyonesBanyhowBanydayB	anxiouslyB
antisocialBanticipationBanticipatingBanthropomorphicBantBanothaBannieBannasB	annapolisB	animatingBanhBangusBangelinaBandrewsBandreBandddBanddB	analyticsBamtBamorsoteBamorBamongBameBambienBamazingwellBamazinBamazesBamateurBamaBalyssaBalternativesB	alternateBaltBalrightyBaloeBalmondsB
allnighterBallisonBallianzBallensBallegraBalisonBaliasBalexiB	alexanderB	alejandraB	alcoholicBalarmsBalabamaBairlinesBairlineBairconBaidBaiBahoyBahnBaguirreBagreesB	agreementBaghhhBagainiBagB
afternoonsBafterallBaffectsBaffectedBafaikBaeroBadvilBadvertsBadvertisingBadultsBadrianaBadoptionBadmittedB	adjustingBadiumBademBadeleBaddonBaddinB	addictingBadamsB
activitiesBacsBacquiredBacousticBacingBachyBachievementBacedB
accountingB	accidentsB
accidentlyB
accessibleBaccentBaccadentallyBacademicBabuzzBabusiveB
absolutleyBabsoluteBabsentBabsBabroadBabramsBaboardBabidingBabbeyBabBaarghBaaawwwBaaawBaaahhhBaaaaBaaBï½ï½ï½ï½B	ï½ï½hB	ï½whyyyBï½whyBï½ureoBï½timoBï½tearï½Bï½stupidityï½Bï½netB	ï½nelegB
ï½iï½mBï½greedï½Bï½cBï½anisalovesuBzzzzzzzzzzzzzzzBzzzzzzzgoodnightBzzzzyBzywwjBzyrtecBzygBzyBzxojB
zwitschertBzwdBzwarteBzwBzumbaBzumB	zuluxhosaBzuljinBzucciniBztBzsgBzqBzpfBzpBzotzBzorzpeepBzornyBzoozooBzoomedBzoombeziBzoningconceptBzongziBzonedBzommggBzomgB	zombiepixBzolBzojuistBzoitaBzoidbergBzoeyBzlsBzjBzitBzippysBzipcodeBzipBzionBzindexBzimmerBzicBzgzBzgfkBzfzBzfdBzetaBzerosBzeropointitBzensifyB
zenrelatedBzenjarBzenhBzendBzemtB	zemotecomBzemoteBzekeB	zeitgeistBzebraBzebBzdbpBzbrushBzbBzavaroniBzappaBzapatosBzapBzaneBzammoBzakBzahedanBzachyBzaccieBzabooByï½nByzbByyyyyyyyyoooooooooouuuuuByyyyuckByyudByyidByyankeesByxdBywByvrByvonneByvndByuuupByuuumByuupByuuByusByupunfortunatelyByupstillByupsByuppieByuppByupasByuotubeByungByunByumyumByumwishByummyyyByummyiByummmmmyyyyByummiestByumbByultronByulByukkyByujmByujByuhhByuenB	yuckhappyBytsBytkeBystBysjByselfByscBysavByroyByroldByrbookByqBypByoyoByowByouxByouwhatByouuuuuuuuuuuB	youuuuuuuByouuuuuuByouuuuuByouuuuByouuuchuuubB	youtubesoByoutubesByoutubecomkalebnationByoutheByouthankByoustinkatrespondingtotextsByouselfByourzByoursiB
yourselvesByourockByournameB
youregreatByourbiggestfanByoupornB	youpleaseByouohByounginsByoungestByoungeByoumissByoulolByoulByouknowimsofreshtilldeathB
youironingB	youhopingB
youhhhhhhhByouheheByoucanByoubrokebackByoubeenByoubeByosemiteByosB
yorkshiresB	yorkshireByorksByorkerByoplaitByoouB	yoooouuuuByoooouuuB
yoooooooouByoooooooooooooooooooouByoooooooByooooByooByonkersByonByomtByolondaByolandaByokeByojgB
yogurtlandB	yogurtingByoguliciousByoginiByoghurtByoggByogaingBynxrBynxoBymousBykyatByknowByklByjpgByirByippieeByippieByipawByipByinzByikeysssByiiiitByihaByieldByiByhereByhawByhBygpgByfrogByezzzirByeyahbutByetiByetgoingByetbutByetandB	yesyesyesByesyByestyByesthereB
yesterdayyB
yesterdaysByesterdaylegByesterdayimByesterdayillB
yesterdayiByesterdaybestByesterdayandByesterdayahhhB	yestardayByessumByesssssssssssB
yessssssirByessssssByesssssByesnotByesnoByesmetByesmaByesitsB	yesertdayByesallByepsjustByepsadlyByepracedByenByellowishorangeishbrownishByellByehitsByehhaaaaaaaByeheyByehaByegByeeyByeemByeehahByeehByeeetB	yeeeehaaaByeeeeeessssB
yeeeeeeeeeByeeeeeByeeeeahiByeeeeByeeeahByeeeByeayyyByeayyByeayByeaupB	yeaterdayB
yeasterdayB	yearstheyByearsssssssByearslolB
yearsblowsByearrrrByearmissionByearlyByearlingB	yearbringByearbookhahahaByealooksByeahyourByeahweB	yeahthoseB	yeahthatsByeahsheByeahsByeahnessByeahmyByeahjustByeahiByeahhhhhhhhhhhhhB
yeahhaventByeahbutB	yeaaaaaahBydhuBydbBybwmBybByayzByayyyyyyyyyyyB	yayyyyyyyByayyouByayschoolisoutByaysByayouByaynessB	yaymencomByayiByayayByayaByavannaByataByatByarisByareByardsaleByardiB	yardhouseByaosByaooB	yaobrokenByanoByanksByankeesByaniByangByallunfortunatelyByaleByahyanB	yahoospamByahooooByahoooByahhByaerByaehByaayyByaawByaasByaaayyyByaaawnByaaaawwwwnnnnByaaaaayB	yaaaaaayyByaaaaaaaaaaaayByaaBxxxxxxxxxxxxxxxxxxxxxxBxxxxxxxxxxxxxxxxxxxBxxxxxxxxxxxxxxxxxBxxxxxxxBxxxxxxloserBxxxxxxBxxxrebelrebelxxxBxxoxoBxxooBxxoBxxBxvBxuxuBxtraBxslimmerBxriBxoxoxoxoxoxoBxoiBxohBxoblairBxmrnBxmlrpcBxmlBxmindBxmenwolverineBxmBxlmBxlBxjocBxizBxhuBxfsBxfilesBxemBxdxdxdBxdpfBxddBxcBxblapsnBxblBxbBxatlBxanaxBxamsBwï½lBwzzzzzzzzzupBwzBwysBwyourBwyouBwyckBwyatttBwyBwxkBwwwyoutubecomwatchvivfmBwwwyoutubecomwatchvcyjvgnpBwwwyoutubecomsluzzaaB%wwwwweeeeeeeeeeeeeeekkkkkeeeennnnddddBwwwwireimagecomBwwwwhispergiftscomBwwwwahliaocomBwwwultimatelohanorgBwwwtwitterfridgecomBwwwtwittercomdjarkaBwwwtwitpiccomBwwwtraveljunkycomBwwwsoompiradiocomBwwwsamstephenscomBwwwrobsessedpattinsoncomBwwwreverbnationcomsukiBwwwredirlandaesBwwwplayerstationitBwwwpicnikcomBwwwoverheardinlondoncoukBwwwmysweetebonycomBwwwmyspacecomtynishakeliBwwwmyspacecompwnageorgBwwwmyspacecommissmickeyBwwwmyspacecomkatieheidieBwwwmyspacecomipsohotBwwwmyspacecomflownyceB!wwwmyspacecomfashionisthenextcityBwwwmyspacecomdjspyBwwwmyspacecomdiscosoutmurdersinBwwwmyspacecomdestroyalllinesBwwwlatalkradiocomBwwwlastfmmusicmarplemegBwwwjustintvkubburBwwwjustintvdjandywB
wwwhotconzBwwwhennesseyblackcomBwwwhavealovelytimecomBwwwdujourmagcomsubscribeBwwwdosriosrestaurantcomBwwwdirectgovukstudentfinanceBwwwcrossroadsnetgocincinnatiBwwwchittypulgacomBwwwbseresultsnetBwwwbilkoBwwwaudiomicrocomBwworkBwwhllyarB	wweeeeoooBwwecomBwwdcBwwBwveBwuzBwutsBwussupBwunBwuldBwuktBwuaBwtzjBwtyjBwtomBwthoseBwthatBwtgB	wtfwinterBwtachingBwsyBwsxiBwswBwsueBwstocktwitsBwstBwsstBwsscfullBwsopBwsmokeyBwskBwsjrBwsevenBwryBwrxqBwrrpBwroxBwronglyBwrongandBwroclawpolandBwrngBwrkoutsBwrkgBwrkdBwritinBwriterstheyBwriteohBwritenBwristsBwrinklesBwrigleyBwrightB	wrestlingB	wrestlersBwrestlefestBwrestledBwreckingBwreckersBwrathBwrapperB	wranglersBwranglerBwraithBwqyBwqfvBwqeBwqBwppnBwppeBwoxiBwowzersBwowzerBwowzaBwowwwwBwowthatB	wowthanksBwowsaBwowpBwowiveBwowiBwowhowBwowhopeBwovenBwovBwothBwotdB	worthlessBworthingBworthaB
worshipperBworsBworriediBwormyBwormieBworldrainingBworldnowBworldisBworldimaB	worlddontBworkyyBworkyBworkworkworkBworkwiseB	workweeksBworkthatB	worksthatBworkstationB	workslastBworksickBworkntBworknoBworkmenBworkmanBworklongBworkkkkkkkkkkkkkkkkkBworkkkBworkiveBworkitsB	workingohBworkinghappyB
workingbutBworkingboooB
workingandBworkiesBworkhillcatsB
workfridayBworkfinallyBworkersBworkdrawingBworkdoneBworkdetailsBworkdaysBworkdBworkbutBworkboyzBworkbooBworkbestBworkarrivedB
workaholicB	workaboutB
wordslooksB
wordgummedBwordddssBwordbyBwordartBwoowooBwoovenBwoosooBwoorkBwoopityBwoopeeBwooowwwB
woootwooooBwooopsBwooopBnwoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooBwooooooooooBwoooompBwooomyBwooohoooBwooohB
woolworthsBwoolseryB	wookiemanB
woohoothisBwoofersBwoofBwoodvineBwoodlandBwoodiesBwoodenB	woodchuckBwonï½tBwontonsBwonlyBwondrousB	wonderwhyB
wonderlandB
wonderingiB	wonderfurB
wonderfulyBwonderfullyB
wonderfullBwonderedBwondeflBwombatBwolverinechilledBwolverhamptonB	wolvarineBwolftrapBwolframBwokkingBwoeiwoeiwoeiBwoefullyB	woantitipBwnoBwnnaBwnlawsBwnatBwnaBwminaBwmidsBwmiadBwmawBwlpfBwlgiBwldaBwlanBwkziBwkymBwkplBwkpBwkingBwkhiBwkdsBwjphlipBwjaiBwjBwizzBwizBwitunesB	wittyrudeB	witnessedBwitlessBwithstandingBwithnBwithinsoBwithdrewB
withdrawlsBwithdrawalsBwithbB	witdrawalBwitchuBwitchaBwishlistBwishinBwishhhBwishfulBwiselyBwirtingBwiredBwirdsBwipeBwinwinBwintourBwintersBwinterboardBwinstonBwinonameBwinnipegBwinningggggBwinningachesBwinksyBwinksBwiniBwingoodBwingnutsBwingmanBwinebeerandB	windowfarB	windmillsB
winchesterBwincedBwimpyBwimpersB	wimbledonBwilsonBwilshireBwilmyBwillsBwillpaginateBwillnotBwillnoBwilllB
willkommenBwillieBwilliamssssssBwilliamsjoshBwilliamsburgBwilliamsBwillhoitB	willgraceBwilldoBwillblokBwildwoodBwildomarBwildlyBwildlifeBwildflowersBwildeBwilcoxBwilberBwikihowBwikidBwijBwiihBwiggityBwifiyouB
wiffleballBwiffB
wifeyyyyyyBwiewBwiederBwidowBwidgetsB
widescreenBwiderBwiddddBwiaihBwhyyyyyyBwhyyyyyB	whywhywhyBwhydBwhyareyoustillhereBwhwhaBwhutB	whuffaokeBwhuahahhahaBwhreBwhrBwhoshereBwhoppingBwhopeeBwhoottBwhooreBwhooopsBwhooopBwhoooopsBwhooooooBwhoooBwhoolllleeeeBwhooaaaBwholeyB	wholesaleBwholelyBwholeheartedlyBwhoishonorsocietyBwhohooBwhodB	whoayoureBwhoahBwhoaaBwhittledBwhittierBwhitneysBwhitneyBwhitleyBwhitexB
whitewaterBwhitesBwhitemanB	whitelistB	whitecapsBwhitbyBwhitB	whistlingB	whistlersBwhistleblowerBwhisperBwhiskyBwhiskersBwhiskedBwhippedBwhinyB
whinetweetBwhincopB	whimperedBwhilestupidBwhilesB
whilegonnaBwhhhyyyBwhhaacckBwheverBwhersBwhereeBwhenyouBwhenwhenBwheniwerealadBwheewBwheelockB
wheelchairBwhedonBwheatsBwheaterBwhatzBwhatttteverBwhatthefuckBwhattheBwhattaburgerBwhattBwhatsupBwhatshappeningBwhateverworksBwhatadayBwhasupB
whassqooddBwharraBwharBwhantsBwhamBwhalenBwhahahahBwhafBwhadyaBwhackerBwhaatttaattttBwhaatBwhaaayBwhaaatB	whaaaaaatBwhaaaaaaaahhhhBwhaaaaaaaaaatBwhaaBwgoiBwglBwgaBwgBwfsBwfqnBwfmBwfeoBwfdBwfamilyBwetsBwetitsBwetiqBwesttBwestlifeBwestinBwestgateBwestendBwestcottBwesleyBweselyBwesBwerewookieeBwereveryB
werespiderBwereoctopusBwereldBwerecountingBwerderBwerdBwerchBwerB
wentworthsBwendBwenchesBwembleyBweltBwelpBwellzBwellyBwellwoodBwellweBwellureBwellurBwellthatBwellsoBwellonlyBwellnotBwellnessB
wellmovingBwellllllllllllllBwellllllBwelllllBwellllBwelllBwellhoweverBwellhopeB	wellhapitB	wellgottaB	wellgoingBwelldeservedB
wellbikiniBwellbackBwellasBwellaB	welcomingB
welcomeyouBwelcomewouldBwelcomesB	welcomeeeBwelcomeanytimeBwelchsBwelBweitersBweissBweirdosB	weirdnessBweirdlyBweirdheroutBweirderBweinfestBweiglyBweightsB
weightlessB	weightingBweighedBweiBwehlBweheyyyyBwegxBwefollowBweezyBweevenBweesBweerBweepyBweepingBweepiesBweepBweeooowBweekworkBweekthenBweeksoverdueBweeksiB	weekrrrrrBweekpleeeeeassseeeBweeknendBweekndBweekiBweekenedB	weekendtoBweekendthatBweekendtakingBweekendpicturesBweekendparisB	weekendorB
weekendnotBweekendloveB
weekendhowBweekendgottaB
weekendbutBweekendaBweekenB	weekeeendBweekdaysBweekdayBweeekendBweeekBweeeeeBweeeeBweeeBweeboBweeabooBwedsB
weddingyouBweddingsBweddingbtnoBweddinBwebshotsBwebkitBwebkinzB
webgraphicBweberBwebduBwebconceptingBwebcomBwebcamsB
webcammingBweaverBweatlerBweatherrrrrB
weathernotBweatherlooksBweatherboredsoooBweartherBwearinBweakiBwdwBwduiBwdgrBwcqaBwcptBwciBwcfBwcandiceBwbnBwbcBwbaeBwbadB
wazzupppppBwayyyyyyBwayyyyyBwayyyyBwayimBwayiBwaydontBwayconfusedBwaxingBwavyBwavingBwavezBwaverlyBwaupoosBwaukBwattyBwattupB	wattchingBwatirBwathingBwathBwatersthoughtBwatersBwaterleyBwaterindianB
waterhouseB	watergunsB	waterfireB	watchpoorBwatchnBwatchmenB	watchingnB
watchingggBwatchignBwatchesBwatchersBwatchaBwatajokeentalBwasupimBwasuBwastB	wasstraatBwaspsB	wasnï½tBwaslooksB
waslookingBwashingtonlameBwashingtonimBwashersBwasamBwarzBwaryB
warwoundscBwarwickBwarriorsBwarrentyBwarrantBwarpBwarmupBwarmthBwarmtBwarmsBwarmlyBwarmerBwariBwarfieldB	warehouseBwareasyBwareBwardenBwarcraftBwarblersBwarblerBwarayBwarawBwapBwantstobeakiddagainBwantneedBwantitB	wanthollaB
wanthaventBwantewdBwantcntBwantbutBwantanB
wannnnaaaaBwannabeBwanktBwandersBwanderBwanaaBwamuBwalwalBwaltzerBwalnutBwalmondsB
wallpapersB
wallinwoodBwalleBwallbutB
walktheyreBwalktheB
walkeronerBwalkerB	walgreensBwaldoBwaldiBwalcersBwalaikumBwalahBwaktunyaBwakkeBwakinBwakilBwakeupB	wakenbakeBwakefulBwakeboardingBwaitwhyBwaitressingB
waitressesBwaitnBwaititsBwaitandBwailiBwaiitBwahtsBwahtBwahooBwahhhhBwahhBwaheyBwahamericanB
wahahahahaBwahahahaBwahahaBwagnersBwaftingBwaerBwadesBwadeBwachtingBwachingBwachaBwacBwaawBwaahBwaaayyyyBwaaayBwaaaayBwaaaahBwaaaaayyyyyBwaaaaahhhhhhBwaaaaaayBwaaaaaaaaahhhhBwaaaaaaaaaahB	waaaaaaaaBwaaaaaaaBwaaaaaBwaaaaBvï½oBvyiBvyBvxBvwllersBvwllBvvouBvuyBvuuyBvuBvspBvryBvrbocomBvqBvoyedBvoyagerstyleBvoyagerBvoyageBvouchersBvoucherB	votingallB	vordermanB	voraciousBvoorBvondtBvonabeBvonBvomitingBvomitBvolvicchallengeBvolunteeringBvolumesBvolumenBvolterraBvoltBvolcomBvolcanoBvoilï½BvoicesmileeyeslaughandB	voiceoverBvoiceaaarrrggghhhBvoeBvodkasBvodasBvodBvocï½BvocieB	vocalistsB
vocabularyBvoBvnecksBvmasBvmailBvlwBvlunaB	vlogcandyBvlogBvldBvkoBvkBvizBvixonBviviannsBviviBviveBvivaBvityBvitaminsBvitaminBvitalBvitaBvisuallyBvisteonBvisstBvislBvisitorsBvisitngBvisiteBvisionboardBvisialvoicemailB	vishnupspBvisasBvisBvirusesBvirtusBvirtuesBvirtueBvirtualkissBvirtualizationB
virtualboxBvirlcomBvirginsBvirgeBvipsBviperBvipcomeBviolinBviolentBviolenceB
violationsB	vioceniteB	vinylcladBvinsensitiveBvinnyBvinerinimicBvineBvindBvimeoBvilleBvillainsBvikcBvigorousBviggoBviewedBviewdrowningBviennaaustriaBviennaBviejoBvidsï½BvidoeB	vidjagameBvideoyouBvideorecordB
videophotoBvideokeB	videoblahBvidaB	victoriasBvictoiasBvictimsBvicodinBviciousBvicB
vibrationsB	vibratingBvibrantBviableBvhitsBvhemtBvgzyBvgtribunecomBvfactoryBvezBvestsBvespaBvesakBveryyyBveryyBverticalchineseBversionshelpB
versioningBverseBversaBveronaBvernaeBvermouthBveritasBvereyBverdictBverandaBveraBvepBveorgxpgBveoB
venueswhatBventuraBventolinBventingBventiBventanaBvenomBvenkyB	vengaboysBvenetianBvenessaBvendorBvehiclesBvegiesBvegiBveggiesespeciallyBveggiesB
vegetablesBvegesBvedantaBvectorBvdnBvdcBvbzgBvatsBvatBvaseBvasB
varnishingBvarnishBvariousBvarietyB	varietiesBvansBvanessasB	vandalizeBvampyreBvaluesBvaluableBvallejoBvallBvalkyriaB
validationB	valiantlyBvalerieBvaleriasB
valentinosB	valentinoB
valentinesB	valenciasBvaldezBvagueBvacuumsBvacuummyB	vacuumingBvacinesBvaccuumBvaccinationsBvacationsightseeingBvacationingBvacashunandBvacantBuzxB
uzbekistanBuzBuxBuwianBuwBuverseBuvBuuuuughBuuuupsBuuuughBuuuuBuuurggBuuuggghhBuuuBuupBuugghhButurnButtonButteredButsButrechtButorrentButmostButhxButhanksButfButerusButdkickButdB
uswitchnetBuswhatBustreamhtmlBustBusnlbestBNusmobilereuterscommobilemanyarticleprdturlhttpwwwreuterscomarticlebigmoneyidusBushersBusfBusetBusersfanfrickingtasticBuseridB	uselesslyBuseingBuscanBusatexasBusageBusaelBursssssBurselffBurrxtaBurmB
urlmincnmtBurlautoexpandBurkBuritorsBuribeBurgpBurghhBurggghBurgentlyBurbanaBuqhBuqBupxBupwardsBupuggBuptoldBupstupidBupstateBupssherB
upsidedownBupshotBupsetsBupsetespeciallyBuprootedBuppsBuppppppBuppppBuppercutBuplandBupkeepBupjBuphaveBupgradedoneBupforBupfeelinB	updressedBupdontBupdatestheyBupdateiBupbusyB
upbringingB	upbracingBupbeatBupbackBupahhBuorBuonBuojpgBuoBunzelaifBunyayBunveilBunusualsBuntwitBuntukBuntoBuntileBunsuspectingBunsurprisedBunsureBunsungBunsuccesfulBunsubscribeBunstoppableB
unsociableB	unsettledBunseededBunsalvageableBunsaltedB
unreliableB	unrelatedBunravelBunproductiveBunpretentiousB
unpreparedB	unpopularB
unpluggingBunplugBunpackedBunnyBunmutedB	unmarriedBunlockedBunlockB	unloadingBunloadB	unleashedB
unladylikeBunkownBunixodbcBunixB	universalBunivB	unitymodeBunittestBunitenBuniteddogscomB
uniservityBuniqnameB	uninvitedBunintuitiveBuninterestingB	uninstallBuninhabitalBunimpressedBuniformsBuniformBunifiedB	unhookingBunhookB	unhelpfulBunheardB
ungratefulBunfuzzyBunfunBunfriedBunfortunetlyBunfortunatellyBunfortuantleyBunfortBunforgettableBunfollowingnotBunfollowingBunfollowersB	unfixableB
unfinishedBunfathomableB	unfairlukB	unfairemoB
uneventfulBunemploymentB	undrstandBundiesBundevelopedB
underworldBunderthesinkBundertandingB
understoodB
underratedBunderpriveledgedB
underpantsB	underpaidBundernourishedB
underneathBundergroundBunderdogB
undeniableB	undeletedBuncontrollablyBuncontrolableBunconditonallyB	unclaimedBuncBunboxedBunbelievablyBunbelievableBunattractiveB
unassumingBunappealingBunanticipatedBunairBunagiBunabashedlyBumzugBumwasteBumuulanB	umpireingBumnoBumnicksBummwhyBummonlyB	ummokjustBummnopeBummmphBummmmBummaBuminaaBumhowBumbrellaï½BumbrellalessB	umbrellaiBumaBuluB
ultimatelyBuljaBuletBulduarBulcersBulBuktvBuktodayB	ukrainianBukqeBukpubsBujzqBujBuitBuinBuhuraBuhppBuhooohBuhohB
uhmygawdddBuhmBuhkneeB
uhhonestlyBuhhmB
uhhindoorsBuhhhhBuhhhgBuglyoneeBugliestBuglierBughjustB
ughhreallyBughhiBughhhhwaitinB	ughhhhmadBughhhhhhhhhhhhBughhhhhhhhhB
ughhhhhhhhBughhhhhhBughdoB
ughanywaysBuggsBuggoBugghhhhhBugghhhB	ugggghhhhBugbootsBugBuftBufffBufBuemqBueatBuduhnBudsBudidBuddBucsdBuclaBuclBuckyBuceBucBubutBubookBubertwitteritBubcsBtï½mBtyvmBtytnBtysonBtysBtyringBtyresBtypoBtypinBtypicalgoinBtypedbutBtynishaBtylersB
tylerhappyBtylenolBtygaBtygBtybBtyaï½BtxtsBtwwBtwuneBtwtviteBtwttrgBtwpBtwomeyBtwoloersB
twnzfinestBtwngreatBtwizzlerBtwitwooB	twitttttyBtwittterBtwittpicBtwittleBtwittixBtwittinBtwitterslowlyB	twitterrrBtwitterringBtwitterrificBtwitterpartyBtwitterologyB
twitternutBtwitternameB	twittermyB
twitterlolBtwitterlandhouseB
twitterizeB
twitteritsBtwitteringupBtwitteringsB	twitterinB	twitterimBtwitterifficBtwitteriB	twitterhiBtwittergadgetBtwitterfriendsBtwitterfridgeBtwitterfeedBtwitterfailsBtwitterfacebookmyspacenoBtwittereveryoneBtwittercopytopifyBtwitterchallengedB
twitterbutBtwitterbugzBtwitterbugsnothingBtwitterbugsgoodnightBtwitterbugsBtwitterblackberryB
twitterbgtB
twitterbffB
twitteratiBtwitteraddictBtwitteractiveBtwitteeeerrrBtwittedBtwittascopeBtwitsterB	twitskiesBtwitpicsB	twitpeepsBtwitmomsBtwitmamaBtwitharBtwitfriendsBtwitfamBtwitchyB	twitchingBtwitchesBtwitaddictedBtwistoryBtwisterBtwirpsBtwirlBtwingeBtwindexxcomBtwimulationsBtwilightguycomBtwilightguyBtwilightersBtwiligghhtttBtwiitsBtwiiterloveBtwiinBtwiggiesBtwidgetB	twiddlingBtwibeBtwibbleBtwiBtwhBtwentiesBtwelveBtweetyB
tweetvilleB	tweetttttB
tweetsuiteB
tweetsjustBtweetshrinkingBtweetsenBtweetlolBtweetlessandBtweetiliciousBtweetheartsBtweethamptonBtweeterzBtweeteBtweetcannonBtweetbudB
tweetbreakB
tweetbeaksBtweetbBtweetageB
tweepslandB
tweepsgoodB
tweeplewayBtweekdeckkkB	tweefightBtweeetsBtweeetBtweeeetB	tweeeeeetBtweedlesBtweedeckBtweedBtweddingBtweakedBtwcBtwatterBtwainBtwaBtvzBtvtotalBtviBtvfilmtheatreBtvaddictBtuuneeeBtutusBtuttoBtutorsBtutorialBtutleBtuteesBtussaudsBtusharBturnonBturninB
turnaroundBturkishBturkeysBturfBturbullBturbinesBtupprwreBtunsiaBtunnocksBtuningBtunapunaB
tumbleweedBtulipsBtulaneBtuitionBtuffBtuesdaydumbBtueBtuckerBtubutBtubsBtubeyyouBtubasBtubBttytomorrowBtttBttownBttgBttcBtsxBtswiftBtswassenBtsssBtsmBtsjBtsiBtshwaneBtsarBtrytomergetwotoolsBtrystBtrysometimesBtryoutsBtryinhBtryingtakingBtryingsorryBtryblahBtrxBtrustyBtrussBtrumpingBtrullyB	truesdaleBtruepsBtruelyBtrueiBtrueeeBtruedBtrueandBtrudysBtrudgedBtruceBtroublesthanksBtroubBtropB
trooseveltBtroopsBtronicBtronBtrollingBtrojancongratsBtrojanBtroisBtrngBtrndsBtrnBtrixBtrivunB
tritonlinkBtristBtrishB
tripsavingBtripolyBtripletBtripicsBtrinityBtriniBtrinaBtrimmerBtrimmedBtrimBtrillinBtrikeBtriesBtricksBtrickpiecesBtrickeryBtricinaB	tributaryBtribesBtribblesB	triathlonBtrianingBtriangleBtrialingforBtrevorBtrevisoBtreningBtremendouslyB
tremendousBtrekyBtrekwhatBtrekoneBtreknotBtrekkyBtrekkiesBtrekkieBtrekkedB	trekagainB	treelinedBtreeeeekB	treecouldBtreckBtrebleB
treatmentsBtreBtrayBtravyB	travoltasB
travellersB	travelledBtravelinBtraveledBtraumatizingB	traumaticBtraumaBtrashesBtrashedBtrashcanBtrasfusionloadedBtrapezeBtrapBtranssiberianBtransmissionB
transgressBtransformerB	transformBtransferringB
transferedBtranscriptionBtranscribingBtransatlanticBtransactionsBtranlsatorsBtrangBtranceBtrampyesssssirBtrakBtraitBtrainstubesBtrainrB	trainingsB	traingingBtrailorB	trailheadBtrailersBtrailedBtragidyBtragicluckilyB	tragediesBtraffickingBtraffffffficB	trafalgerB
tradewindsB
tradescantBtradesBtradersB	trademarkBtrackyBtrackpadBtrackkBtrackingBtrackflashbackB
trackballsB	trackballBtrackallBtracieBtracesBtraceBtptBtpsBtpgloveBtpcBtoysrusBtoysonlyBtoynoBtownnoBtowingBtowerBtowedBtoveBtourtureBtoursBtournyBtouristsBtouriBtourdeusBtouqueBtoughtBtoughestBtouchwasBtouchscreenBtouchesBtoucheBtottalyBtotoroBtotherBtotesBtotemBtoteBtotalyB	totallingBtostitosBtossingBtossinBtosserBtossaBtosBtoryBtorturedBtortsBtortoiseshellB
tortelliniBtorontosBtornadoB	tormentedBtormentBtorinoBtoriBtoreyB	torentialBtorconB	torchwoodBtoqetherBtopolBtopnotchBtopmanBtoplessBtopifyBtopendBtoozBtooyoullBtoowerdphubbysB
toothpicksBtooshersBtooprobBtoooothBtoooooomBtooooooBtoooneBtoolsiBtoolkitBtoolbarBtooieBtoodleBtoodaayyBtoocantBtoobastardsBtooamBtonytBtonsillitisBtonoghtBtonkedBtonitesB	toniteoneBtonitehappyB	toniiiiteBtoniightBtonihtBtonightwifeBtonightthanksBtonighttB	tonightnoBtonightmaybeBtonightjustinB
tonightgotB
tonightfoxB
tonightandB	tonightamBtoniBtongitsBtonesB
tonematrixBtomsBtomrrowBtomroBtomosBtomorrowwimBtomorrowwannaB	tomorrowwBtomorrownewBtomorrowneedBtomorrowmothersBtomorrowlolBtomorrowlandB
tomorrowisBtomorrowhappyBtomorrowgottaBtomorooBtomoroBtomorahBtomoraBtomooBtomoiveBtomoBtommrowBtommBtombBtomarrowbecauseBtolifeusBtolerateBtoledoBtoldddBtolBtokiBtokensBtokeBtoinksBtogglingB	togethersBtogethaBtogetBtoeatBtodayyyyyyyyyB	todayyyyyBtodayyyyBtodayyouB	todaywithBtodayughBtodaytryoutsBtodaytottalyB	todaythisBtodaysonB	todaysomeBtodaysoBtodaysniffleBtodaysadBtodayreallyB
todayreadyB	todaynolaBtodaynoBtodaymyBtodayitsBtodayisaprosperousBtodayinBtodayimBtodayhoweverB	todayhopeBtodayhmmphhB	todayhaveB
todayhappyB
todayguessB	todaycoldBtodaybutB
todaybeingB	todaybeenBtodayagitatedBtodatB	todaaaaayBtocarBtobuttBtoastyBtoastiesBtoastersB
toadtasticBtoaBtniteBtnaBtmwrBtmsBtmrohowBtmorrowBtmoroBtmobilesBtmoBtmhBtmailBtmBtlsBtlcBtlBtksBtkdB
tjeffersonBtizBtixsBtittleBtitosBtitlewhoopsBtitaniumBtishaBtishBtirithB	tiringitsBtirednotB	tirednessB
tiredloldaBtirediBtiredhadBtireddddBtiredddBtiredcoffeeBtiramisuBtiptopB	tipsywellBtipsyBtippersBtippedB	tinyï½sBtinytwitterBtinypiccommwzB
tinypiccomBtintedBtinknBtinkeredB
tinkerbellBtiniestBtinhBtinglingBtinfoilBtinedBtimthumbBtimsBtimothyBtimidBtimezzzB
timewarnerB	timetableB	timestampBtimesiB	timeshahaB	timesgoodB	timesbackBtimerBtimenowBtimenoBtimelyBtimelessdontBtimeifBtimehowlB
timegettinB
timefrenchB	timeframeBtimeevenBtimeeBtimeandBtimeaB
timberfakeBtilliesBtilingBtilesBtileBtilasBtilaaaBtikkaBtikiBtiiiiiimmmmmmeeewhateverBtiiiiiiiredBtightlyB	tightenedBtightenB	tigerheatBtifullytragicBtiffanyBtifannyBtierdiBtierdaB	tiehahahaBtiedBtidyingBtidiedBtidayBticonBticksBticklingBtickleBtickingBticketttttssB
ticketttttB
ticketlessBtickerBtickedBtibetBtiberiuBtiashaBtiaBthï½ngBthxxBthurstagB
thursdayyyBthunderstormsperfectBthunderstormsBthunderstormingBthundershowersB
thunderrrrB
thunderingB	thunderedBthumpingB	thumbnailBthughBthuB	thtonightBthsBthruiBthrsBthrowsBthrowingkeepsBthrowinBthrowerBthrowbieB
throughsheBthroughiBthroteBthrooooooooooooooBthroatsBthristyBthrillseekersBthrillingandB	thrillingBthriftyB	thresholdBthreequartersB
threenightBthreeleggedBthreedayB	threatensBthreateningB
threatenedBthreatBthrdBthqBthpleaseBthowingBthougthB	thoughyesBthoughtwhatBthoughthanksBthoughtfuluB
thoughtfulB	thoughlolBthoughiBthoughheB
thoughgoodBthoughfeelingB
thoughbbqsB	thoughanyB	thoughandBthosBthorwBthorsBthorpeB
thoroughlyBthoroughBthornyBthorneBthornberrysBthornBthoooBthongBthomsonBthomayBthomasiBtholololBthoesBthoeBthodontB	thocaughtBthobutBthnknBthnkBthngsBthngBthksBthiswashBthissBthislolBthisllBthisitsBthisidBthisfunB
thisbrandiBthisareBthirtyshhhyoureBthirteenBthirstBthirdsBthirdchapterBthinksmB
thinkinwowB	thinkingiB	thinkhopeBthinkerB
thinkdunnoBthingysBthingyitBthingssBthingsiBthingoBthingnotBthingitsBthingandBthimkBthiknBthiisBthiingBthiefBthieBthickeBthhmmmBthghtBtheyuBtheysBtheyrBtheviewBthessalonikiBthesisBthesBthersBthermometerBthermalBthereweBthereveBtheretoBthereoyyBtherelolBthereiveBthereflyBthereeeeeeeeeeeBthereeeeeeeBtherebyBtherapueticB therainbowholicmeeeriesilencenetBtherafluBtherBtheorysBtheofficenbcBthenyouB
thenthanksB	thenpsychBthennnnnnnnBthennnBthenisBtheniBthenhowsBthemworkBthemthenBthemsoBthemovieBthemoonBthemloveBthemimBthemhelpB
themegivesBthemedBthembutBthematicBthelovelybonesBthelmaBthekasBthehodgecoukBtheheckBthehannabethBthegameBtheftBtheeseBtheemBtheeeeBthedailyshowBthebearBthebcBtheatresBtheaterahahBtheaaBthchBthcBthazBthayBthawBthaughtB	thatyoureBthatyoBthatyBthatwouldmakeBthatvBthatsï½meeBthatssB	thatmakesB	thatlaterB	thatgonnaB
thatburgerBthatbothBthatbesidesBthatandBthatamBthassaBthashBtharBthanxxxBthanxsBthankyooooouBthankujesusBthankuBthanksthereB	thankssssBthanksssBthankssB
thanksmineB
thankskidsBthanksiBthanksdoBthankgodBthaiedBthabksBthaanksBthaankBtgthrBtgifiBtgiBtgcBtfarpBtfaBtexyBtextilesBtextedcalledB	texangirlBtewBteusBtetepBtetensBtetBtessyBtessBteslaBtescosBterrorizingB	territoryBterranceBterraceBterminologyB
terminedasB	terminalsBteriyakiBterenceBteratomaBterasseBteradiciBterBtequilllacarneBtequilaBtentsideBtentsBtenthB	tentaclesBtennilleBtennerBtenieceBtenhoBtengoBtengBtenerifeBtenenenBtenenB
tenderloinB
temptationBtemplecultureambiencetrulyBtempleBtempeBtempatBtemmeBtellonlyBtellinBtellersBtellerB
televisionB
televisingBteletubbiesB
telescopicB	telescopeBtelenovelasBtelemarketersB	telegraphBteleconferenceBteleBtekzillaBtekenenB
teignmouthBteiBteganBtegBteflonBteeveeBteetsB
teetotalerB
teethmouthBteethedBteeshirtBteesBteenyBteensthanksBteensBteenBteekayBteeheeiB	teeheeandBtedxBtedtalksBtediousBteddychuckingB
techyuppieBtechyB
techupdateBtechnologicallyBtechieBtecasBtecBteaserBteasBtearyBtearsitsBtearrrrrrrrBtearingB	teardropsBteamiB	teamgreenBteacupB	teacherimBtdyBtdwpBtdukesBtdubBtdlBtdaynothingBtcuBtcrBtbqhBtbonesBtboneBtbhbutBtbagBtaylorrBtaylenaBtaylaBtaxmanBtavaresBtaurenBtauraBtauntingBtattoedBtatteredB
tattedddddBtatlerBtatiBtateBtataskyBtataindicomBtastingBtassieBtassiBtasmaniaB	taskbasedBtaskbarBtaserBtarteBtartanBtartBtarsierBtarrantBtarotBtarlacBtargetsBtargetedBtardeBtarblackBtaraBtaquitoBtaqaBtapsBtappingBtapiteBtapingBtapesBtapatBtapBtanyyaBtanyaBtantrumBtantraBtantalizinglyBtannaBtanksBtankdpsBtangoooBtangledBtangibleB
tanghalingBtammyBtamlynBtameraBtamaraBtamBtaltalBtallyBtallebudgeraBtallcreeB
tallblondeBtalktheBtalktalkBtalkshowBtalkkkBtalkingvoiceBtalkersBtalkedaboutBtalindaBtalentsBtalBtaknBtakerBtakeoutBtakeawayBtakB	taiwaneseBtaintedBtailsB	tailightsBtailboneBtahxefktBtahongBtahoeBtahBtaggingBtagersBtagalogBtaffysB	taffjonesB	taekwandoBtaeBtadpoleBtadiBtadaBtacticalBtacosoneBtacomaBtackyBtacklingBtabzBtabooBtabloidsBtabloidBtabletopBtablespottingBtablesBtablejukeboxBtabbyBsï½oBszB
systemwideBsystemsBsysBsyrupB	syntheticBsynologyBsynnBsyncsBsymptonsBsymphonycmsB	symphonicB
sympathizeB
sympathiseB
sympathiesBsympahtyBsymondsB	sylvesterBsyapaB	syamptomsBsyaBsxswBsxcomBsxBswwwaaaagggBswornBswordsBswordBswoonBswoobsBswolleneeksBswolenBswizzyB
switchfootBswitchesBswipedB
swingstillBswinedBswindonBswinBswimmersBswiftsBswifferBsweptBswensensB
swelteringBswelterBswellingBsweetyeBsweetpotatoeBsweetpeaBsweetietweethugBsweetiesB
sweetiepieBsweetheartsB
sweetgrassBsweeterBsweetdreamsBsweepstakesBsweeetBsweeeetBsweeeeetB
sweeeeeeetB	swedenbutB	sweatshopBswearingBswaysBswayingBswassBswareBswapimB	swampedsoBswampBswamBswaBsvcBsvBsuzyBsuziBsuzakuBsuxsB
suwweeeeetBsuuuuuuuurerubBsuuuuckBsuuuksB	sutzkeverB	sustituteBsustainabilityB	suspicionBsuspenseBsuspendBsushichineseBsuseBsusansBsusBsurvivorBsurveysBsurveillanceBsurrrrrouslyBsurroundingBsurreyB	surrenderBsurpisinglyB
surlytweenBsurfsBsurfinBsurfersBsurfaceBsureiBsuprnaturalBsuprisesBsupriseB
supremistsBsupprtinB
supposedddB	supposeddB
supposeandBsupportsB
supportiveB
supportersB	supportedBsuppoortBsupplysB
supplimentBsuppliesB	supperinnBsupperBsuppBsuposeB
supervisorBsupervisionB	superviseBsupervilliansB
supertrampBsupertargetBsuperstitionBsuperseededB
supermodelB	superglueB
superfreshBsuperexcitedBsuperbadBsuperawesomeBsupastitionBsupaBsunwannaBsunthursbutBsuntB	sunstrokeBsunshinetheBsunshinenothingBsunshineeeeeeeB
sunshineatB
sunshiinesBsunshadeBsunraysBsunrashBsunnysB	sunnybankBsunnnyBsunnnBsunlightBsungsBsunfayBsunehreB	sundayyyyBsundayvisitinBsundaygonnaB	sundaybutBsundaesBsuncreamBsunbutB
sunburntitBsunburnsB	sunburnnnBsunblockBsunbeamsBsunbeamB
sunbathingB	sunbathinBsunbatheBsunbaeBsumwareBsumtimesBsumthnB	sumthinnnBsumthingB	sumptuousBsummyBsummmmmerrrrrBsummeryB	summervacB
summertimeBsummersBsummerrB
summerjustB	summerbutB
summerballBsummatBsummaryB	summarizeB	summariesB
summahkayyBsummaasBsummaBsumiuBsuminBsumfinkBsulumitsBsuluBsullivanBsukksBsukkedBsukanyaBsuizasBsuivezBsuitsBsuitescretegreeceBsuitesBsuitableBsuhweetBsuhanaB
suggestingBsugaryB	sugarlandB	sugarfreeBsugarchocolatecaffeineBsugaaarBsufkaBsuffolkB
sufficientBsufficationBsufferinBsuetBsuekdBsueBsudyingBsudetenlandBsudahBsudafedBsudB	suckswishBsuckssB	suckkkkkkBsuckkkkBsuckitsBsuckiestBsuckespeciallyBsuckdB
suchateaseBsuccumbBsuccubusB
successnowB
successionBsuccessfulyBsuccessfullyB	succesfulBsucceedB	subwayyumBsuburbsBsubtractB
substancesB	subsidingBsubsideBsubscriptionsB
subscriberBsubponeaBsuboB
submittingBsubmitB	submarineB
subliminalBsubiteBsubhanaBsubformsBsubethaB	subcribedBsubconsciousBsubconscienceBsubbedBsuatuBsuarezBstyoopidBstuvkB	stuttgartBsturdayBstuporBstupidstupidBstupidoBstupidlyB
stunninglyB
stunneditsBstunnedBstunknoBstumpyB	stumblingBstufpplsBstuffyB
stuffthinkBstufftedBstuffitBstuffatBstudyyyyyyyyyyyyyyyyyyyyyyyyyBstudyingwhewBstudyingnowB	studyhallB	studyexamBstudlifeB
studiomadeB
studieslawBstudBstubbsB
stubbornlyBstubbleBstubbedBstuartBstrutfluffyBstrungBstrugglingselfishnessB	strugglesB	strudlespBstrudelB
structuresBstructrBstruckthoughtBstroppyB	strongestBstrokingB	strippersBstripesBstringerBstrikerB
strikegoodB
strightersBstrickenBstreuselB
stretchingB	stretchesBstressorscomeB	stressingB
stressiestBstressfulbeenBstressdBstrekB
streetviewB	streetcarBstreekB	strechingBstreamsB
streamkeysB	streamingBstreakBstraycatBstrayBstraussBstratusBstrategyB
strategiesBstrategicclockBstrappedBstrangleBstraitsBstraightjustBstraightenersBstraightenedB
stragglersB
stracchinoBstrBstpidBstpBstoveB	storyyyyyB	storywiseBstorytotallyBstorytellerB	storysizeBstorysBstorymyBstoryallBstormtroopersBstormsooBstoreseeBstoreiBstopselfridgesBstopppedBstopedBstoopidBstooopitBstooopidB	stoooopitBstonesBstonerB
stonehengeBstompedBstomatchBstomacheB
stomachaceBstokoeB	stokednotB
stocktwitsB	stockingsBstockingBstockedBstmfanB	stitchesiBstitchedBstisBstirfryBstirBstinkyB
stingcrunkBstingBstinaBstimulusB	stimulateB	stillthisBstillllBstilllBstillerB	stillbornBstiffBsticklerB
stickersssBstichesBsthlmBstfuBsteviewonderBsteviejBstevensBsteroidBsterlingBstereosoundBstereosBstereoBsteppinB	stephmustBstephensB
stephaniesBstephaneB
stepbystepBstemBstelleBstellasBstellarBsteffBsteetBsteemerBsteelsBsteamedBstealsBstealingB
steakhouseBsteadilyBsteadBstdinpdfBstcomB	staythatsBstaynB
stayathomeBstavrosBstauBstatkB	statisticB	stationedBstatingB
statesboroB
statementsBstasticsBstarwarswithaddedpantsBstarupsBstartupBstartledBstartillBstarssB
starsailorBstarrersBstarrBstarlaBstarinBstarhopeBstareBstarbuxB	starburstBstarbuksBstarbuckB	starbucczB
standstillBstandinBstandardsthereB
stancethisBstampsBstamfordBstalkersaturdayBstalkerishlyBstalinBstakeBstakcBstainBstagingBstagBstaffordBstaffersBstadenBstackingBstackeoverflowBstacieBstaceysBstaceyBstaceBstaackBstaBssugBssssssssssmackB	sssnoringBssshhhBssshhBssooBssoBssmBssbbB	srtartingBsquooshBsquishyBsquishedBsquirtedBsquirrellistB	squirellsBsquiggyB	squidswhoBsqueekyBsqueegeeBsqueeBsquealsBsqueakB	squattingBsquatsBsquashesBsquashedBsquarethatsBsqeakyB	spymasterBspyedBspurtedBspurBspssBspsongsBsprungBsproutsBsprintsBsprintB
sprinklingBsprinkleB
springleafBspringfieldBspringboardBspriggeBspreeiBsprawledBsppBspoutBspottyBsportvB
sportsmensBsportingBsportdayB	spooohortBspooningBspookyBspontaneouslyBspontaneityBsponsorB
spongebobsBspokBspoilersBspnBsplurgeBsplodgeBsplitupB	splittingBsplitsBsplintsB	splintersB
splashtownBsplashBspittinBspitsBspiritualityB	spiritualBspinsBspinelliB	spinelessBspiltBspikecarBspikeBspideyBspiderwomanB	spiderwebBspidersiBspidersBspiceyBsphexBsphereBsphB
spgridviewBspeshB	spertinyaBspermBspellinBspellerBspellcheckerBspeedwayBspeedracherBspeedoB
speedbumpsB
speechlessBspeechesB	speculateBspectorBspecsB	specilistB	specifiedBspecialistpoorB
specialistBspecialiBspeciaalBspecBspeakerphoneB
speakernyaBspcnBspazzBspazBspayedBspayBspawningB	spatteredBspatBspasyB	spartacusBsparringBsparksB	sparklersBsparkleBsparkingBsparesBspankingB
spanishanyBspanielsBspanielBspanB	spamvirusBspamspamspamBspamsBspainyouBspaiBspahklyBspaghettistrapBspadesB	spaceshipB
spaceportsBsowyBsowwwyBsowwwwyyBsowwieeeBsowokeBsowburBsouvlakiBsouthwesternB	southsideB
southridgeB	southparkB
southmightBsouthkoreanBsournessBsourishBsourcingB	soupysoupBsoupbutBsoundersB	soundbiteBsoundaBsoulmateBsouljaaBsoulfullB	soulchildB
soufflï½BsouffleB	sotomayorBsosososoBsososoBsosadBsosaBsosB
sorryyyyyyBsorryyyBsorrymyBsorryillB	sorrydeepBsorrybutBsorrryyBsorrrryBsorrowBsororsBsoreheadBsoreadyBsorceBsorbetBsoproudofyouBsopranoBsophmoreBsophiesBsophBsoothingBsoothesBsooperB
soooughhhhBsooooryB%sooooooooooooooooooooooooooooooooooooBsoooooooooooooooooBsoooooooooooB
soooooooonBsooooocalllllB	sooooletsBsoonweBsoontheB	soonnnnnnBsoonneedBsoonmustBsoonimBsooniBsoonhaveBsoonestBsonoBsonnnnyB	soninlawsBsonicswhichBsonicBsoniaBsongsiBsongplottingB	songpeterB	songmakesBsongloveB	songhelloBsonggoeswrongsBsongggBsongdBsonetimeBsondaughterBsomthingBsomnBsommatBsometimessomtimesBsometimesdidBsomethngBsomethingillB	somethignB
somervilleBsomersetB	someplaceBsomeoneeBsomelolBsomeifBsomeiB
somebodiesBsombodysB	somalionsBsomB	solutionsBsoloistBsolnBsolitudeB	solitaireBsoleaB	solderingBsolangeBsokayBsokBsoimBsoilBsoichiB	sohcahtoaBsogniBsoftyiB	softshockBsoftlyBsofterBsofteesBsofieBsofasBsoetimesBsodaheadBsocoBsocksysBsocksooBsockedBsocieteBsocialscopeBsocialmediatvBsocialisingB	socialilyBsociableBsochBsocBsobreB	soberdangBsoberanaBsoarinBsoakingBsnugglinBsnuggiedBsnuffBsnubbedBsntBsnsdBsnsBsnowyB
snowdaysssBsnowballBsnottyBsnotsBsnotBsnoreBsnoozingBsnoopyBsnoopsBsnoodBsnobBsnlyouveB	snlkimyouBsnitchsneekerBsnifflyBsngsBsneezyBsneezesBsneersBsneakerzBsndhdaintelBsndBsnazzedBsnapshotBsnapsBsnappyBsnappppBsnappierB	snakesandBsnakesBsnaaaapBsmutsBsmushedBsmuglyBsmuggleBsmugBsmudgingBsmudgeBsmtimesBsmthngBsmrBsmoresBsmoothyBsmoothstreamingBsmoochesBsmokyB	smokingggBsmokiBsmokeyBsmokersBsmokerB	smokefreeB	smokefestBsmokedBsmoBsmlBsmittenBsmithamherstBsmiteBsmirkerB	smilelifeBsmileitBsmiledBsmhyouBsmexyBsmeltBsmelledBsmearedBsmashspaceningcomBsmashedbeinBsmashB
smartphoneBsmartpenBsmartestBsmarterBsmartedBsmartcarBsmartbarBsmarmyB
smallvilleBsmallifBsmalBsmacksBsmackdownexceptBsmackdownecwB	smackdownBsluttinBsluttedBslurredBslurpeesB	slurpeeeeBslumBsluggishBslrBslpyBslowthenBslowtheB
slowmotionBslowingBslowernBslowedBslowdownBsloveniaB	slovakianBslouchyBslotsBsloppyBslopesBslopeBslooowwwBsloooooooooowlyyyyyyyyyyyyyBslobberB	sloansterBsloBsljbwtBsliverlightBsliverB
slitheringBslippyBslipperyBslipnowBslingB	slightestBslidersBslidebarBslideB
sleppytimeBsleevesB
sleevelessBsleeveB
sleepytownB
sleepytimeBsleepyiB
sleepyheadBsleepupB	sleeptimeB	sleepthenBsleepsoBsleeprestlessBsleeppppppppBsleeppBsleepladiesBsleepitsBsleepingtimeB
sleepinessBsleepiesBsleepiB	sleepgoodB	sleepgladB	sleepfailBsleepdeprivedBsleepcrazinessBsleeeepyB	sleeeeepyBsleeeeeppyyyyyyBsleeeeeeepzB
sleeeeeeepBsleeeeeeeepyBslaysBslavingBslateBslashBslarmBslaptonBslapsBslantedBslammerBslammaBslackinBslackBslabB
skyrocketsB
skypeeeeeeBskylineBskylarBskyfireB	skydiversBskyandBskwlBskunksBskunkBskrgBskottBskooBskomerBskolaBskoBskittlesBskitsBskitBskirtsBskiptonBskipsBskippinBskinnedBskinanotherBskimmedB	skimchampB	skillslolBskiingBskidBskewlBsketchesB	skepticalBskeletonBskatersBskaterBskankinwhatBskankingBskandarBskaBsizzlingBsiyalBsixxBsixtyB	sixteenthBsituationalBsitttingBsittnBsitewhatBsiteitsBsitedBsitarB
sisterbabyBsisteBsistasBsistahBsisiBsisaBsirensBsippinnBsipBsiouxsinnerBsinseBsinonBsinnerBsinnedBsinksBsinhalenfossBsingzBsingtelB	singleourBsingerguitaristBsincBsimsponBsimpsonB
simplifiedB	simonidolBsimmonsBsimileyB
similarityB	simfingerBsilverstonesBsilverstoneBsilversteinBsilveraB	sillynessBsillBsiliconeBsilencedoesntBsikyBsikaflexBsiitterBsiiiickBsigurBsiguesBsignupsBsignupBsignificantlyBsignificantB	signatureBsignalsB	signalingBsigmaBsightseeingBsightsBsightingB	sighthankBsighsadfaceBsighlolBsighitsBsighhhBsighhBsiggghhBsigBsierraBsientoBsiempreBsidewaysBsideofB
sidemyselfBsideitsBsidedBsiddyBsicpBsicksomeBsickoBsicknotBsicklyBsicklikeBsickkkkkBsickkkkBsickkkBsickkBsickheB	sickeningBsickenBsickeeBsickcancelledBsickandBsickallBsicckkkkBsiccckBsiblingsBsiberiaBsiargaoBsianBsiadB	shweeeeetBshwastyBshwaBshuuutBshutupandsmileBshutupBshuttingBshuttersBshutingBshutdownBshushBshuresBshureBshuntBshulBshufflesBshudveBshudntBshtBshrunkBshriyasBshritsB	shreddingB	shreddiesBshredBshowwwwwBshowwwBshowsyouBshowstoppersBshowssBshowroomBshowrBshowimaBshowifBshowiB
showerwereBshowertrafficfactoryBshowersworkBshowershaveB	showerandBshovingBshoutzBshoutinBshoutboxBshoulveB
shouldhaveBshottieBshotgunBshortyurBshortyB
shortstopsB
shortstackBshortsleevedBshortieBshortiBshortestBshorterB
shorteningB	shortenedBshortenBshortcutBshortcomingBshortcakefailB	shortcakeB	shortagesBshortageB	shorelineBshoreeeB	shopstillB	shopppingBshoppinghmmmBshoppingfantasticBshoppinBshoppersBshopperBshoplolBshopliftingBshopingB
shopdoesntBshoottB	shoothopeBshooouldBshoooowBshooootBshooooesBshooknB
shooeessssB	shontelleBsholdersBsholderB:shoesshoesshoesyayyayyayloliwouldpostatwitpicbutidntknohowB	shoeslessBshoesiBshockersBshmolanBshloshedBshldaBshizzeBshivashankarBshivBshitterBshittBshitshowBshitloadB
shitethankB	shirtttttBshirazBshirBshipsBshipleyBshinsB
shinningatBshinjukuB
shiningnewB	shineeeeeBshikariBshiitBshiiiterhymingB!shiiiiiiiiiiiiiiiiiiiiiiiiiiiiiitB&shiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiitBshiggityBshiftyB
shiftswillBshifterBshiftedBshidduchBshibuyaBshiaBshhhweeeetjayzBshezzaBshezzB	sheyagainBsherrieshepherdBsherriB	sherratonBshermkBshermanBsheriffBsheridanBshepardsBshepBshenanigansBshenBshemmsBshemarBshelvingBsheltersB	shelteredBsheliBshelaaaaaaaaBsheerBsheenaBsheeeepB
sheeeeitttBsheeeeitBshediddyBsheckyB	sheboyganBsheathBsheatB	shaycarlsBshayBshawneeiBshawnaBshawnBshawdowsBshavingBshavenBshatterdBshatterBshatranjanpoliBsharsiesBsharpiedBsharpieB	sharpenedBsharnBsharkeezBsharffenbergerBshareeeeBshardupBshardsBshapeshifterBshanwestBshantzBshantellBshanteBshanntBshanniiBshannenBshannanBshanesBshanepunjabBshaneBshamwowB	shamelessBshamedBshamanB	shalondasBshallownessBshakingB	shakeyyyyBshakespeareBshakenB	shakedownBshakedBshakasBshakalohanaBshahBshagB	shaddupppBshabuBshabbyBshaayadBsgbBsfosBsfeltBsexxxyB
sexxxxxxxyBsexualmaternalBsexifyBsexayBsewedBsewageBsewBseverlyBseveringBsevensBsettlingBsettlesB
settleneedBsettingsdesignBsethBsessionstillBsessionmoshBsesionBseshionBsesameBservingsBservicewillBservicesBservicedB
serversideB
serverniceBseruBsermonsB	seriuoslyBseriousslyyyBseriouslythisBseriouslyitB
seriouslyiB
seriousitsBseriouseBserioBserieBseriaBsergiB	sergeantsBserendipityB
serenadingBserenadeBsercoBseraniBserBsequesterhopeB	sequencesBsequelBseptaBsephoraB	separatesB
separatelyBseosB
sentimentsBsensorsB
sensomaticBsensitivityB	sensitiveBsensingB	sensexbutBsenseiBsensehahahaB
sennheiserB
senioritisBsenderBsendaiBsencyBsenceBsempitBsemisB	semiolderBseminarB	semiflakyBsemanggiBsellsBselloutB
selfupdateBselfrighteousB
selfridgesBselfportraitBselfimposedB
selfdenialB
selfchangeBselfawarenessBselenasBselenagomezlastB	selectiveBselaluBseizuresBseizureBsehatBseeyuhhhBseenprecededB	seeminglyBseeleyBseekerBseeitBseeiB	seeeeeeeeBseeeBseductivelyBseducedB	sederhanaBsedarisBsecurelyBsecuredBsecureBsecsBsecretlyB
secondstarB	secondaryBseckB	sebastianBseatbeltBseastarBseasideBseasaltBsearsBsearchedBseannBseamsBsealersBsealBsdpsBsdkB	scurryingBscurredB	sculptingBscubaBsctrahcBscruffyB	scrubbingBscriptsB
scriptgirlBscribkinBscribeBscrewsBscreenshotsBscreensB
screeningsB	screeniesB
screengrabBscreenedBscreencastsonlineB
screechingBscreamsBscreamoBscreammB	screamidkBscreamerB"screaaaaaaaaaaaaaaaaaaaaaaaaaaaaamBscratchingsBscrapeB	scrapbookBscrapB	scrabbledBscrabbleBscousersB
scoundrelsBscottishtryingtobeirishBscotterBscorpianB	scorelessBscoredBscoopBscoobyBsconeBscofiledBsciifiBschulzBschuhzBschuhmacherB	schooooolB
schoolworkBschoolwhateverBschoolmaybeBschoolmatesB
schoolmateB	schoollolB	schooljoyB
schoolioooBschoolimB
schoolhopeB
schoolgawdBschooldayuummB	schooldayBschoolbooksBschollsB
scholfieldBscholarBscholBschmooB
schindlersB	scheuringBschemeBschemaB	schedulerBschedBschadeBschBsccrBscattergoodsB	scarlettsBscarletBscarfedBscarfBscareyBscaredededededBscarceBscannerBscannedBscanlonBscampiBscamerasBscalpersBscalesBscalaBscabsBsbzBsaythinkB
sayperfectBsaymyBsayitsBsayingsBsayidBsaygetBsayedBsaybitchBsayamBsawnBsavvvB
savesummerBsavesBsaverB	savechuckBsauteedBsaurusBsaunaspaBsaucepanBsatzBsaturnBsatrtedBsatisfyBsatisfactionBsatiBsathBsatdeeBsataBsastchB	saskatoonBsashasBsashBsasBsarrahBsarmsBsardonicBsardinesBsarcyBsarasBsaranBsarahsBsappyBsapinsidetrackBsapBsanzzBsantinoBsantiagoBsantiBsantanaBsankqBsankBsanjayaB	sanitizedBsanibelBsanhBsandwichesssB
sandwichedBsandsBsandownBsandiegoB	sandersonBsandboxBsandalsBsandalBsanctityBsanchaBsamuriBsamuelBsamsungBsamsonBsamsamBsamplesBsamplerBsammieBsammichBsamiBsamewhyBsamewayBsameeeBsambaBsamanthadeniseBsaltyBsaltvinegartheyBsalsaBsalmonBsallyBsalivaryBsalesmanBsalariedBsaladsBsakuraBsakitBsakatasBsaisB	sainthoodBsaimeeBsailorBsailinBsailedBsaigonB
saidpleaseBsahabatBsaginakiBsagetBsafewayBsafetyBsafesexBsafepoorBsafarisB	sadtheresBsadthenB	sadsvilleBsadsorryBsadshoesBsadpandaBsadimB	sadifyingBsadieBsadfoundBsadfacedBsadeBsaddleBsaddiBsaddensBsadddimBsadddBsactoB	sacrilegeBsacrificingB
sacrificesB	sackirothBsackedBsabrinathoughBsabrinaBsabipBsabiBsabbyBsabBsaadiqBsaabBsaaadBsaaaaafeB	saaaaaaidBsaaaaaaaaaaaaaadBrï½isï½ngsBrytBryqcBrymedBryltBrylandBryggenB
rygegrejdkBrygbyBryehappyBryeBryanseacrestBryannBryanairBryallBryaaaaaaaaaaaaanBrxBrwwtjBrwittersBrwhatsBrwBrvBruxburyBrutledgeBruthieBrutgerBrustlingBrusstleBrussiaBrusselBrussBrusksBrusakBrusBruralBrunwayB
runthroughBruntBrunsexcursionsBrunseeBrunnerBrunmomsBrunlessBrunhahaBrungBrundownBrundayBrunbutBrunawayBrumoredBrumorBrummageBrumboBrumageBrulingBrulesmyBruleazBrukhBruineddeathBruilenBrugsBrugratsBrughtBruffhopeBrubysBrubiksBrubbishhhhhhBrubadeauBruangBrtwestcoastgalB	rsvpsorryBrsvpingBrsvpedBrsvpB	rsssundayBrspicBrsiB	rrtheatreBrrodedBrrodBrrobertsBrpgBroyalsBroyalBroxyBroxieB
rowwishingBrowsBrowrowBrowlolBrovinBroverBroutinesB	roundtripBroundsBroundnroundBroundingBroundaboutsB
roughnightBroughlyBrottonBrottingBrotrBrothlisbergerBrotateBrostiBrossiBroseburgandBrosaryBrosalieBrosaBropesBropeBrootBroooopBroooooooooomBroomyBroomiBroomhoweverBroomateBronnieBroninBroniBronaldoBromulinBromoBrominaB	romanticiBromansBromaniaBromancescomediesBromanBrolynnBrolloBrollinBrollerskateBrollerBrollandBrolfB	rolemodelBrolandBroiB
rogï½rioBroflmfaoB
roflmaoyesBrofBroeBrodrï½guezsBrocstarBrocoB	rockstarsBrocksnothingB	rockpoolsBrockettBrocketslakersB	rockedoneB	rochesterBrochelleBrocBrobsBrobotsBrobinsonB	robertsonB
robertpattBrobeBrobberBrobartsBroastingBroastersBroarBroamingBroadwarriorB	roadtripsBroadtripBroadstheBroBrnyBrnsBrnBrmBrlBrkBrjwtfBrivetingB	riverwalkBriversBrivercenterBrivalsBritualisticB
ritasbadlyBritasBrisingBriqhtBripstickBrippleBrippingBripleysBripedB	ripbatmanBriotnowBrinseBringtoneBringmoreBringingBrimBrikBrijaBrihannaBrihBrightweB	rightrealBrightimBrightiB
rightgottaB	rightardsBrigbyBrigBriegerBridin
??
Const_5Const*
_output_shapes	
:?u*
dtype0	*̩
value??B??	?u"??                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '       '      !'      "'      #'      $'      %'      &'      ''      ('      )'      *'      +'      ,'      -'      .'      /'      0'      1'      2'      3'      4'      5'      6'      7'      8'      9'      :'      ;'      <'      ='      >'      ?'      @'      A'      B'      C'      D'      E'      F'      G'      H'      I'      J'      K'      L'      M'      N'      O'      P'      Q'      R'      S'      T'      U'      V'      W'      X'      Y'      Z'      ['      \'      ]'      ^'      _'      `'      a'      b'      c'      d'      e'      f'      g'      h'      i'      j'      k'      l'      m'      n'      o'      p'      q'      r'      s'      t'      u'      v'      w'      x'      y'      z'      {'      |'      }'      ~'      '      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'       (      (      (      (      (      (      (      (      (      	(      
(      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (       (      !(      "(      #(      $(      %(      &(      '(      ((      )(      *(      +(      ,(      -(      .(      /(      0(      1(      2(      3(      4(      5(      6(      7(      8(      9(      :(      ;(      <(      =(      >(      ?(      @(      A(      B(      C(      D(      E(      F(      G(      H(      I(      J(      K(      L(      M(      N(      O(      P(      Q(      R(      S(      T(      U(      V(      W(      X(      Y(      Z(      [(      \(      ](      ^(      _(      `(      a(      b(      c(      d(      e(      f(      g(      h(      i(      j(      k(      l(      m(      n(      o(      p(      q(      r(      s(      t(      u(      v(      w(      x(      y(      z(      {(      |(      }(      ~(      (      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(       )      )      )      )      )      )      )      )      )      	)      
)      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )       )      !)      ")      #)      $)      %)      &)      ')      ()      ))      *)      +)      ,)      -)      .)      /)      0)      1)      2)      3)      4)      5)      6)      7)      8)      9)      :)      ;)      <)      =)      >)      ?)      @)      A)      B)      C)      D)      E)      F)      G)      H)      I)      J)      K)      L)      M)      N)      O)      P)      Q)      R)      S)      T)      U)      V)      W)      X)      Y)      Z)      [)      \)      ])      ^)      _)      `)      a)      b)      c)      d)      e)      f)      g)      h)      i)      j)      k)      l)      m)      n)      o)      p)      q)      r)      s)      t)      u)      v)      w)      x)      y)      z)      {)      |)      })      ~)      )      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)       *      *      *      *      *      *      *      *      *      	*      
*      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *       *      !*      "*      #*      $*      %*      &*      '*      (*      )*      **      +*      ,*      -*      .*      /*      0*      1*      2*      3*      4*      5*      6*      7*      8*      9*      :*      ;*      <*      =*      >*      ?*      @*      A*      B*      C*      D*      E*      F*      G*      H*      I*      J*      K*      L*      M*      N*      O*      P*      Q*      R*      S*      T*      U*      V*      W*      X*      Y*      Z*      [*      \*      ]*      ^*      _*      `*      a*      b*      c*      d*      e*      f*      g*      h*      i*      j*      k*      l*      m*      n*      o*      p*      q*      r*      s*      t*      u*      v*      w*      x*      y*      z*      {*      |*      }*      ~*      *      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*       +      +      +      +      +      +      +      +      +      	+      
+      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +       +      !+      "+      #+      $+      %+      &+      '+      (+      )+      *+      ++      ,+      -+      .+      /+      0+      1+      2+      3+      4+      5+      6+      7+      8+      9+      :+      ;+      <+      =+      >+      ?+      @+      A+      B+      C+      D+      E+      F+      G+      H+      I+      J+      K+      L+      M+      N+      O+      P+      Q+      R+      S+      T+      U+      V+      W+      X+      Y+      Z+      [+      \+      ]+      ^+      _+      `+      a+      b+      c+      d+      e+      f+      g+      h+      i+      j+      k+      l+      m+      n+      o+      p+      q+      r+      s+      t+      u+      v+      w+      x+      y+      z+      {+      |+      }+      ~+      +      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+       ,      ,      ,      ,      ,      ,      ,      ,      ,      	,      
,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,       ,      !,      ",      #,      $,      %,      &,      ',      (,      ),      *,      +,      ,,      -,      .,      /,      0,      1,      2,      3,      4,      5,      6,      7,      8,      9,      :,      ;,      <,      =,      >,      ?,      @,      A,      B,      C,      D,      E,      F,      G,      H,      I,      J,      K,      L,      M,      N,      O,      P,      Q,      R,      S,      T,      U,      V,      W,      X,      Y,      Z,      [,      \,      ],      ^,      _,      `,      a,      b,      c,      d,      e,      f,      g,      h,      i,      j,      k,      l,      m,      n,      o,      p,      q,      r,      s,      t,      u,      v,      w,      x,      y,      z,      {,      |,      },      ~,      ,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,       -      -      -      -      -      -      -      -      -      	-      
-      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -       -      !-      "-      #-      $-      %-      &-      '-      (-      )-      *-      +-      ,-      --      .-      /-      0-      1-      2-      3-      4-      5-      6-      7-      8-      9-      :-      ;-      <-      =-      >-      ?-      @-      A-      B-      C-      D-      E-      F-      G-      H-      I-      J-      K-      L-      M-      N-      O-      P-      Q-      R-      S-      T-      U-      V-      W-      X-      Y-      Z-      [-      \-      ]-      ^-      _-      `-      a-      b-      c-      d-      e-      f-      g-      h-      i-      j-      k-      l-      m-      n-      o-      p-      q-      r-      s-      t-      u-      v-      w-      x-      y-      z-      {-      |-      }-      ~-      -      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-       .      .      .      .      .      .      .      .      .      	.      
.      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .       .      !.      ".      #.      $.      %.      &.      '.      (.      ).      *.      +.      ,.      -.      ..      /.      0.      1.      2.      3.      4.      5.      6.      7.      8.      9.      :.      ;.      <.      =.      >.      ?.      @.      A.      B.      C.      D.      E.      F.      G.      H.      I.      J.      K.      L.      M.      N.      O.      P.      Q.      R.      S.      T.      U.      V.      W.      X.      Y.      Z.      [.      \.      ].      ^.      _.      `.      a.      b.      c.      d.      e.      f.      g.      h.      i.      j.      k.      l.      m.      n.      o.      p.      q.      r.      s.      t.      u.      v.      w.      x.      y.      z.      {.      |.      }.      ~.      .      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.       /      /      /      /      /      /      /      /      /      	/      
/      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /       /      !/      "/      #/      $/      %/      &/      '/      (/      )/      */      +/      ,/      -/      ./      //      0/      1/      2/      3/      4/      5/      6/      7/      8/      9/      :/      ;/      </      =/      >/      ?/      @/      A/      B/      C/      D/      E/      F/      G/      H/      I/      J/      K/      L/      M/      N/      O/      P/      Q/      R/      S/      T/      U/      V/      W/      X/      Y/      Z/      [/      \/      ]/      ^/      _/      `/      a/      b/      c/      d/      e/      f/      g/      h/      i/      j/      k/      l/      m/      n/      o/      p/      q/      r/      s/      t/      u/      v/      w/      x/      y/      z/      {/      |/      }/      ~/      /      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/       0      0      0      0      0      0      0      0      0      	0      
0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0       0      !0      "0      #0      $0      %0      &0      '0      (0      )0      *0      +0      ,0      -0      .0      /0      00      10      20      30      40      50      60      70      80      90      :0      ;0      <0      =0      >0      ?0      @0      A0      B0      C0      D0      E0      F0      G0      H0      I0      J0      K0      L0      M0      N0      O0      P0      Q0      R0      S0      T0      U0      V0      W0      X0      Y0      Z0      [0      \0      ]0      ^0      _0      `0      a0      b0      c0      d0      e0      f0      g0      h0      i0      j0      k0      l0      m0      n0      o0      p0      q0      r0      s0      t0      u0      v0      w0      x0      y0      z0      {0      |0      }0      ~0      0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0       1      1      1      1      1      1      1      1      1      	1      
1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1       1      !1      "1      #1      $1      %1      &1      '1      (1      )1      *1      +1      ,1      -1      .1      /1      01      11      21      31      41      51      61      71      81      91      :1      ;1      <1      =1      >1      ?1      @1      A1      B1      C1      D1      E1      F1      G1      H1      I1      J1      K1      L1      M1      N1      O1      P1      Q1      R1      S1      T1      U1      V1      W1      X1      Y1      Z1      [1      \1      ]1      ^1      _1      `1      a1      b1      c1      d1      e1      f1      g1      h1      i1      j1      k1      l1      m1      n1      o1      p1      q1      r1      s1      t1      u1      v1      w1      x1      y1      z1      {1      |1      }1      ~1      1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1       2      2      2      2      2      2      2      2      2      	2      
2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2       2      !2      "2      #2      $2      %2      &2      '2      (2      )2      *2      +2      ,2      -2      .2      /2      02      12      22      32      42      52      62      72      82      92      :2      ;2      <2      =2      >2      ?2      @2      A2      B2      C2      D2      E2      F2      G2      H2      I2      J2      K2      L2      M2      N2      O2      P2      Q2      R2      S2      T2      U2      V2      W2      X2      Y2      Z2      [2      \2      ]2      ^2      _2      `2      a2      b2      c2      d2      e2      f2      g2      h2      i2      j2      k2      l2      m2      n2      o2      p2      q2      r2      s2      t2      u2      v2      w2      x2      y2      z2      {2      |2      }2      ~2      2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2       3      3      3      3      3      3      3      3      3      	3      
3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3       3      !3      "3      #3      $3      %3      &3      '3      (3      )3      *3      +3      ,3      -3      .3      /3      03      13      23      33      43      53      63      73      83      93      :3      ;3      <3      =3      >3      ?3      @3      A3      B3      C3      D3      E3      F3      G3      H3      I3      J3      K3      L3      M3      N3      O3      P3      Q3      R3      S3      T3      U3      V3      W3      X3      Y3      Z3      [3      \3      ]3      ^3      _3      `3      a3      b3      c3      d3      e3      f3      g3      h3      i3      j3      k3      l3      m3      n3      o3      p3      q3      r3      s3      t3      u3      v3      w3      x3      y3      z3      {3      |3      }3      ~3      3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3       4      4      4      4      4      4      4      4      4      	4      
4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4       4      !4      "4      #4      $4      %4      &4      '4      (4      )4      *4      +4      ,4      -4      .4      /4      04      14      24      34      44      54      64      74      84      94      :4      ;4      <4      =4      >4      ?4      @4      A4      B4      C4      D4      E4      F4      G4      H4      I4      J4      K4      L4      M4      N4      O4      P4      Q4      R4      S4      T4      U4      V4      W4      X4      Y4      Z4      [4      \4      ]4      ^4      _4      `4      a4      b4      c4      d4      e4      f4      g4      h4      i4      j4      k4      l4      m4      n4      o4      p4      q4      r4      s4      t4      u4      v4      w4      x4      y4      z4      {4      |4      }4      ~4      4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4       5      5      5      5      5      5      5      5      5      	5      
5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5       5      !5      "5      #5      $5      %5      &5      '5      (5      )5      *5      +5      ,5      -5      .5      /5      05      15      25      35      45      55      65      75      85      95      :5      ;5      <5      =5      >5      ?5      @5      A5      B5      C5      D5      E5      F5      G5      H5      I5      J5      K5      L5      M5      N5      O5      P5      Q5      R5      S5      T5      U5      V5      W5      X5      Y5      Z5      [5      \5      ]5      ^5      _5      `5      a5      b5      c5      d5      e5      f5      g5      h5      i5      j5      k5      l5      m5      n5      o5      p5      q5      r5      s5      t5      u5      v5      w5      x5      y5      z5      {5      |5      }5      ~5      5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5       6      6      6      6      6      6      6      6      6      	6      
6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6       6      !6      "6      #6      $6      %6      &6      '6      (6      )6      *6      +6      ,6      -6      .6      /6      06      16      26      36      46      56      66      76      86      96      :6      ;6      <6      =6      >6      ?6      @6      A6      B6      C6      D6      E6      F6      G6      H6      I6      J6      K6      L6      M6      N6      O6      P6      Q6      R6      S6      T6      U6      V6      W6      X6      Y6      Z6      [6      \6      ]6      ^6      _6      `6      a6      b6      c6      d6      e6      f6      g6      h6      i6      j6      k6      l6      m6      n6      o6      p6      q6      r6      s6      t6      u6      v6      w6      x6      y6      z6      {6      |6      }6      ~6      6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6       7      7      7      7      7      7      7      7      7      	7      
7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7       7      !7      "7      #7      $7      %7      &7      '7      (7      )7      *7      +7      ,7      -7      .7      /7      07      17      27      37      47      57      67      77      87      97      :7      ;7      <7      =7      >7      ?7      @7      A7      B7      C7      D7      E7      F7      G7      H7      I7      J7      K7      L7      M7      N7      O7      P7      Q7      R7      S7      T7      U7      V7      W7      X7      Y7      Z7      [7      \7      ]7      ^7      _7      `7      a7      b7      c7      d7      e7      f7      g7      h7      i7      j7      k7      l7      m7      n7      o7      p7      q7      r7      s7      t7      u7      v7      w7      x7      y7      z7      {7      |7      }7      ~7      7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7       8      8      8      8      8      8      8      8      8      	8      
8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8       8      !8      "8      #8      $8      %8      &8      '8      (8      )8      *8      +8      ,8      -8      .8      /8      08      18      28      38      48      58      68      78      88      98      :8      ;8      <8      =8      >8      ?8      @8      A8      B8      C8      D8      E8      F8      G8      H8      I8      J8      K8      L8      M8      N8      O8      P8      Q8      R8      S8      T8      U8      V8      W8      X8      Y8      Z8      [8      \8      ]8      ^8      _8      `8      a8      b8      c8      d8      e8      f8      g8      h8      i8      j8      k8      l8      m8      n8      o8      p8      q8      r8      s8      t8      u8      v8      w8      x8      y8      z8      {8      |8      }8      ~8      8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8       9      9      9      9      9      9      9      9      9      	9      
9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9       9      !9      "9      #9      $9      %9      &9      '9      (9      )9      *9      +9      ,9      -9      .9      /9      09      19      29      39      49      59      69      79      89      99      :9      ;9      <9      =9      >9      ?9      @9      A9      B9      C9      D9      E9      F9      G9      H9      I9      J9      K9      L9      M9      N9      O9      P9      Q9      R9      S9      T9      U9      V9      W9      X9      Y9      Z9      [9      \9      ]9      ^9      _9      `9      a9      b9      c9      d9      e9      f9      g9      h9      i9      j9      k9      l9      m9      n9      o9      p9      q9      r9      s9      t9      u9      v9      w9      x9      y9      z9      {9      |9      }9      ~9      9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9       :      :      :      :      :      :      :      :      :      	:      
:      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :       :      !:      ":      #:      $:      %:      &:      ':      (:      ):      *:      +:      ,:      -:      .:      /:      0:      1:      2:      3:      4:      5:      6:      7:      8:      9:      ::      ;:      <:      =:      >:      ?:      @:      A:      B:      C:      D:      E:      F:      G:      H:      I:      J:      K:      L:      M:      N:      O:      P:      Q:      R:      S:      T:      U:      V:      W:      X:      Y:      Z:      [:      \:      ]:      ^:      _:      `:      a:      b:      c:      d:      e:      f:      g:      h:      i:      j:      k:      l:      m:      n:      o:      p:      q:      r:      s:      t:      u:      v:      w:      x:      y:      z:      {:      |:      }:      ~:      :      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *$
fR
__inference_<lambda>_323946
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *$
fR
__inference_<lambda>_323951
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?/
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?/
value?/B?/ B?.
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
;
	keras_api
_lookup_layer
_adapt_function*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias
 "_jit_compiled_convolution_op*
?
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses* 
?
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias*
'
1
 2
!3
/4
05*
'
0
 1
!2
/3
04*
* 
?
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
6trace_0
7trace_1
8trace_2
9trace_3* 
6
:trace_0
;trace_1
<trace_2
=trace_3* 
* 
{
>iter
	?decay
@learning_rate
Amomentum
Brho	rms|	 rms}	!rms~	/rms
0rms?*

Cserving_default* 
* 
7
D	keras_api
Elookup_table
Ftoken_counts*

Gtrace_0* 

0*

0*
* 
?
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Mtrace_0* 

Ntrace_0* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

 0
!1*

 0
!1*
* 
?
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ttrace_0* 

Utrace_0* 
]W
VARIABLE_VALUEconv1d/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv1d/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 

[trace_0* 

\trace_0* 

/0
01*

/0
01*
* 
?
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

btrace_0* 

ctrace_0* 
_Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_10/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

d0
e1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
OI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
R
f_initializer
g_create_resource
h_initialize
i_destroy_resource* 
?
j_create_resource
k_initialize
l_destroy_resource><layer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
m	variables
n	keras_api
	ototal
	pcount*
H
q	variables
r	keras_api
	stotal
	tcount
u
_fn_kwargs*
* 

vtrace_0* 

wtrace_0* 

xtrace_0* 

ytrace_0* 

ztrace_0* 

{trace_0* 

o0
p1*

m	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

s0
t1*

q	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
??
VARIABLE_VALUE RMSprop/embedding/embeddings/rmsXlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/conv1d/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUERMSprop/conv1d/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/dense_10/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?
VARIABLE_VALUERMSprop/dense_10/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
r
serving_default_input_5Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_5
hash_tableConstConst_1Const_2embedding/embeddingsconv1d/kernelconv1d/biasdense_10/kerneldense_10/bias*
Tin
2
		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
	*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_323606
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp!conv1d/kernel/Read/ReadVariableOpconv1d/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp4RMSprop/embedding/embeddings/rms/Read/ReadVariableOp-RMSprop/conv1d/kernel/rms/Read/ReadVariableOp+RMSprop/conv1d/bias/rms/Read/ReadVariableOp/RMSprop/dense_10/kernel/rms/Read/ReadVariableOp-RMSprop/dense_10/bias/rms/Read/ReadVariableOpConst_6*"
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_324045
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsconv1d/kernelconv1d/biasdense_10/kerneldense_10/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhoMutableHashTabletotal_1count_1totalcount RMSprop/embedding/embeddings/rmsRMSprop/conv1d/kernel/rmsRMSprop/conv1d/bias/rmsRMSprop/dense_10/kernel/rmsRMSprop/dense_10/bias/rms* 
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_324115??	
?g
?
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323401

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	$
embedding_323386:
?u?$
conv1d_323389:? 
conv1d_323391: !
dense_10_323395: 
dense_10_323397:
identity??conv1d/StatefulPartitionedCall? dense_10/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_323386*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_323217?
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_323389conv1d_323391*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_323237?
$global_max_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_323151?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_10_323395dense_10_323397*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_323255x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall"^embedding/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_save_fn_323930
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::P
add/yConst*
_output_shapes
: *
dtype0*
valueB B
table-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: T
add_1/yConst*
_output_shapes
: *
dtype0*
valueB Btable-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?T
?
"__inference__traced_restore_324115
file_prefix9
%assignvariableop_embedding_embeddings:
?u?7
 assignvariableop_1_conv1d_kernel:? ,
assignvariableop_2_conv1d_bias: 4
"assignvariableop_3_dense_10_kernel: .
 assignvariableop_4_dense_10_bias:)
assignvariableop_5_rmsprop_iter:	 *
 assignvariableop_6_rmsprop_decay: 2
(assignvariableop_7_rmsprop_learning_rate: -
#assignvariableop_8_rmsprop_momentum: (
assignvariableop_9_rmsprop_rho: M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: #
assignvariableop_12_total: #
assignvariableop_13_count: H
4assignvariableop_14_rmsprop_embedding_embeddings_rms:
?u?D
-assignvariableop_15_rmsprop_conv1d_kernel_rms:? 9
+assignvariableop_16_rmsprop_conv1d_bias_rms: A
/assignvariableop_17_rmsprop_dense_10_kernel_rms: ;
-assignvariableop_18_rmsprop_dense_10_bias_rms:
identity_20??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_conv1d_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_10_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp assignvariableop_4_dense_10_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_rmsprop_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp assignvariableop_6_rmsprop_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp(assignvariableop_7_rmsprop_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_rmsprop_momentumIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_rmsprop_rhoIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:10RestoreV2:tensors:11*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 _
Identity_10IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp4assignvariableop_14_rmsprop_embedding_embeddings_rmsIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp-assignvariableop_15_rmsprop_conv1d_kernel_rmsIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp+assignvariableop_16_rmsprop_conv1d_bias_rmsIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp/assignvariableop_17_rmsprop_dense_10_kernel_rmsIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp-assignvariableop_18_rmsprop_dense_10_bias_rmsIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_20Identity_20:output:0*=
_input_shapes,
*: : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable
?
-
__inference__destroyer_323896
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
/
__inference__initializer_323906
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?

?
-__inference_Conv1D_Model_layer_call_fn_323629

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?u? 
	unknown_4:? 
	unknown_5: 
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
	*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323262o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_embedding_layer_call_fn_323813

inputs	
unknown:
?u?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_323217t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
B__inference_conv1d_layer_call_and_return_conditional_losses_323847

inputsB
+conv1d_expanddims_1_readvariableop_resource:? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:? *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:? ?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?u
?
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323806

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	5
!embedding_embedding_lookup_323779:
?u?I
2conv1d_conv1d_expanddims_1_readvariableop_resource:? 4
&conv1d_biasadd_readvariableop_resource: 9
'dense_10_matmul_readvariableop_resource: 6
(dense_10_biasadd_readvariableop_resource:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/Conv1D/ExpandDims_1/ReadVariableOp?dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?embedding/embedding_lookup?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_323779?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*4
_class*
(&loc:@embedding/embedding_lookup/323779*,
_output_shapes
:??????????*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/323779*,
_output_shapes
:???????????
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d/Conv1D/ExpandDims
ExpandDims.embedding/embedding_lookup/Identity_1:output:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:? *
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:? ?
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

??????????
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? b
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*+
_output_shapes
:????????? l
*global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_max_pooling1d/MaxMaxconv1d/Relu:activations:03global_max_pooling1d/Max/reduction_indices:output:0*
T0*'
_output_shapes
:????????? ?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense_10/MatMulMatMul!global_max_pooling1d/Max:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_10/SoftmaxSoftmaxdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_10/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp^embedding/embedding_lookupE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
B__inference_conv1d_layer_call_and_return_conditional_losses_323237

inputsB
+conv1d_expanddims_1_readvariableop_resource:? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:? *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:? ?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_dense_10_layer_call_and_return_conditional_losses_323255

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
+
__inference_<lambda>_323951
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
E__inference_embedding_layer_call_and_return_conditional_losses_323822

inputs	+
embedding_lookup_323816:
?u?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_323816inputs*
Tindices0	**
_class 
loc:@embedding_lookup/323816*,
_output_shapes
:??????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/323816*,
_output_shapes
:???????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:??????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
l
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_323151

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?2
?	
__inference__traced_save_324045
file_prefix3
/savev2_embedding_embeddings_read_readvariableop,
(savev2_conv1d_kernel_read_readvariableop*
&savev2_conv1d_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop?
;savev2_rmsprop_embedding_embeddings_rms_read_readvariableop8
4savev2_rmsprop_conv1d_kernel_rms_read_readvariableop6
2savev2_rmsprop_conv1d_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_10_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_10_bias_rms_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B ?	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop(savev2_conv1d_kernel_read_readvariableop&savev2_conv1d_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop;savev2_rmsprop_embedding_embeddings_rms_read_readvariableop4savev2_rmsprop_conv1d_kernel_rms_read_readvariableop2savev2_rmsprop_conv1d_bias_rms_read_readvariableop6savev2_rmsprop_dense_10_kernel_rms_read_readvariableop4savev2_rmsprop_dense_10_bias_rms_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *$
dtypes
2		?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
?u?:? : : :: : : : : ::: : : : :
?u?:? : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
?u?:)%
#
_output_shapes
:? : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
?u?:)%
#
_output_shapes
:? : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: 
?
?
__inference_<lambda>_3239467
3key_value_init1857_lookuptableimportv2_table_handle/
+key_value_init1857_lookuptableimportv2_keys1
-key_value_init1857_lookuptableimportv2_values	
identity??&key_value_init1857/LookupTableImportV2?
&key_value_init1857/LookupTableImportV2LookupTableImportV23key_value_init1857_lookuptableimportv2_table_handle+key_value_init1857_lookuptableimportv2_keys-key_value_init1857_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init1857/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?u:?u2P
&key_value_init1857/LookupTableImportV2&key_value_init1857/LookupTableImportV2:!

_output_shapes	
:?u:!

_output_shapes	
:?u
?

?
-__inference_Conv1D_Model_layer_call_fn_323445
input_5
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?u? 
	unknown_4:? 
	unknown_5: 
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
	*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323401o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference__initializer_3238917
3key_value_init1857_lookuptableimportv2_table_handle/
+key_value_init1857_lookuptableimportv2_keys1
-key_value_init1857_lookuptableimportv2_values	
identity??&key_value_init1857/LookupTableImportV2?
&key_value_init1857/LookupTableImportV2LookupTableImportV23key_value_init1857_lookuptableimportv2_table_handle+key_value_init1857_lookuptableimportv2_keys-key_value_init1857_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init1857/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?u:?u2P
&key_value_init1857/LookupTableImportV2&key_value_init1857/LookupTableImportV2:!

_output_shapes	
:?u:!

_output_shapes	
:?u
?
Q
5__inference_global_max_pooling1d_layer_call_fn_323852

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_323151i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?C
?
__inference_adapt_step_8075
iterator9
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2a
StringLowerStringLowerIteratorGetNext:components:0*'
_output_shapes
:??????????
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite }
SqueezeSqueezeStaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
StringSplit/StringSplitV2StringSplitV2Squeeze:output:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:

_output_shapes
: 
?

?
-__inference_Conv1D_Model_layer_call_fn_323283
input_5
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?u? 
	unknown_4:? 
	unknown_5: 
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
	*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323262o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
!__inference__wrapped_model_323141
input_5b
^conv1d_model_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handlec
_conv1d_model_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	9
5conv1d_model_text_vectorization_string_lookup_equal_y<
8conv1d_model_text_vectorization_string_lookup_selectv2_t	B
.conv1d_model_embedding_embedding_lookup_323114:
?u?V
?conv1d_model_conv1d_conv1d_expanddims_1_readvariableop_resource:? A
3conv1d_model_conv1d_biasadd_readvariableop_resource: F
4conv1d_model_dense_10_matmul_readvariableop_resource: C
5conv1d_model_dense_10_biasadd_readvariableop_resource:
identity??*Conv1D_Model/conv1d/BiasAdd/ReadVariableOp?6Conv1D_Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp?,Conv1D_Model/dense_10/BiasAdd/ReadVariableOp?+Conv1D_Model/dense_10/MatMul/ReadVariableOp?'Conv1D_Model/embedding/embedding_lookup?QConv1D_Model/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2h
+Conv1D_Model/text_vectorization/StringLowerStringLowerinput_5*#
_output_shapes
:??????????
2Conv1D_Model/text_vectorization/StaticRegexReplaceStaticRegexReplace4Conv1D_Model/text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite r
1Conv1D_Model/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
9Conv1D_Model/text_vectorization/StringSplit/StringSplitV2StringSplitV2;Conv1D_Model/text_vectorization/StaticRegexReplace:output:0:Conv1D_Model/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
?Conv1D_Model/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
AConv1D_Model/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
AConv1D_Model/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
9Conv1D_Model/text_vectorization/StringSplit/strided_sliceStridedSliceCConv1D_Model/text_vectorization/StringSplit/StringSplitV2:indices:0HConv1D_Model/text_vectorization/StringSplit/strided_slice/stack:output:0JConv1D_Model/text_vectorization/StringSplit/strided_slice/stack_1:output:0JConv1D_Model/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
AConv1D_Model/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
CConv1D_Model/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
CConv1D_Model/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
;Conv1D_Model/text_vectorization/StringSplit/strided_slice_1StridedSliceAConv1D_Model/text_vectorization/StringSplit/StringSplitV2:shape:0JConv1D_Model/text_vectorization/StringSplit/strided_slice_1/stack:output:0LConv1D_Model/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0LConv1D_Model/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
bConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastBConv1D_Model/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
dConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastDConv1D_Model/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
lConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapefConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
lConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
kConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProduConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0uConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
pConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
nConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatertConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0yConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
kConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastrConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
nConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
jConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxfConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0wConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
lConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
jConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2sConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0uConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
jConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuloConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0nConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
nConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumhConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0nConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
nConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumhConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0rConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
nConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
oConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountfConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0wConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
iConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumvConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0rConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
mConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
iConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2vConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0jConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0rConv1D_Model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
QConv1D_Model/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2^conv1d_model_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleBConv1D_Model/text_vectorization/StringSplit/StringSplitV2:values:0_conv1d_model_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
3Conv1D_Model/text_vectorization/string_lookup/EqualEqualBConv1D_Model/text_vectorization/StringSplit/StringSplitV2:values:05conv1d_model_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
6Conv1D_Model/text_vectorization/string_lookup/SelectV2SelectV27Conv1D_Model/text_vectorization/string_lookup/Equal:z:08conv1d_model_text_vectorization_string_lookup_selectv2_tZConv1D_Model/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
6Conv1D_Model/text_vectorization/string_lookup/IdentityIdentity?Conv1D_Model/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????~
<Conv1D_Model/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
4Conv1D_Model/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
CConv1D_Model/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor=Conv1D_Model/text_vectorization/RaggedToTensor/Const:output:0?Conv1D_Model/text_vectorization/string_lookup/Identity:output:0EConv1D_Model/text_vectorization/RaggedToTensor/default_value:output:0DConv1D_Model/text_vectorization/StringSplit/strided_slice_1:output:0BConv1D_Model/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
'Conv1D_Model/embedding/embedding_lookupResourceGather.conv1d_model_embedding_embedding_lookup_323114LConv1D_Model/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*A
_class7
53loc:@Conv1D_Model/embedding/embedding_lookup/323114*,
_output_shapes
:??????????*
dtype0?
0Conv1D_Model/embedding/embedding_lookup/IdentityIdentity0Conv1D_Model/embedding/embedding_lookup:output:0*
T0*A
_class7
53loc:@Conv1D_Model/embedding/embedding_lookup/323114*,
_output_shapes
:???????????
2Conv1D_Model/embedding/embedding_lookup/Identity_1Identity9Conv1D_Model/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????t
)Conv1D_Model/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%Conv1D_Model/conv1d/Conv1D/ExpandDims
ExpandDims;Conv1D_Model/embedding/embedding_lookup/Identity_1:output:02Conv1D_Model/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
6Conv1D_Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?conv1d_model_conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:? *
dtype0m
+Conv1D_Model/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
'Conv1D_Model/conv1d/Conv1D/ExpandDims_1
ExpandDims>Conv1D_Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:04Conv1D_Model/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:? ?
Conv1D_Model/conv1d/Conv1DConv2D.Conv1D_Model/conv1d/Conv1D/ExpandDims:output:00Conv1D_Model/conv1d/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
"Conv1D_Model/conv1d/Conv1D/SqueezeSqueeze#Conv1D_Model/conv1d/Conv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

??????????
*Conv1D_Model/conv1d/BiasAdd/ReadVariableOpReadVariableOp3conv1d_model_conv1d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
Conv1D_Model/conv1d/BiasAddBiasAdd+Conv1D_Model/conv1d/Conv1D/Squeeze:output:02Conv1D_Model/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? |
Conv1D_Model/conv1d/ReluRelu$Conv1D_Model/conv1d/BiasAdd:output:0*
T0*+
_output_shapes
:????????? y
7Conv1D_Model/global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
%Conv1D_Model/global_max_pooling1d/MaxMax&Conv1D_Model/conv1d/Relu:activations:0@Conv1D_Model/global_max_pooling1d/Max/reduction_indices:output:0*
T0*'
_output_shapes
:????????? ?
+Conv1D_Model/dense_10/MatMul/ReadVariableOpReadVariableOp4conv1d_model_dense_10_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
Conv1D_Model/dense_10/MatMulMatMul.Conv1D_Model/global_max_pooling1d/Max:output:03Conv1D_Model/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,Conv1D_Model/dense_10/BiasAdd/ReadVariableOpReadVariableOp5conv1d_model_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Conv1D_Model/dense_10/BiasAddBiasAdd&Conv1D_Model/dense_10/MatMul:product:04Conv1D_Model/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Conv1D_Model/dense_10/SoftmaxSoftmax&Conv1D_Model/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'Conv1D_Model/dense_10/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp+^Conv1D_Model/conv1d/BiasAdd/ReadVariableOp7^Conv1D_Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp-^Conv1D_Model/dense_10/BiasAdd/ReadVariableOp,^Conv1D_Model/dense_10/MatMul/ReadVariableOp(^Conv1D_Model/embedding/embedding_lookupR^Conv1D_Model/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 2X
*Conv1D_Model/conv1d/BiasAdd/ReadVariableOp*Conv1D_Model/conv1d/BiasAdd/ReadVariableOp2p
6Conv1D_Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp6Conv1D_Model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2\
,Conv1D_Model/dense_10/BiasAdd/ReadVariableOp,Conv1D_Model/dense_10/BiasAdd/ReadVariableOp2Z
+Conv1D_Model/dense_10/MatMul/ReadVariableOp+Conv1D_Model/dense_10/MatMul/ReadVariableOp2R
'Conv1D_Model/embedding/embedding_lookup'Conv1D_Model/embedding/embedding_lookup2?
QConv1D_Model/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2QConv1D_Model/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_dense_10_layer_call_fn_323867

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_323255o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
-
__inference__destroyer_323911
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
G
__inference__creator_323901
identity: ??MutableHashTable|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
l
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_323858

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?u
?
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323729

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	5
!embedding_embedding_lookup_323702:
?u?I
2conv1d_conv1d_expanddims_1_readvariableop_resource:? 4
&conv1d_biasadd_readvariableop_resource: 9
'dense_10_matmul_readvariableop_resource: 6
(dense_10_biasadd_readvariableop_resource:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/Conv1D/ExpandDims_1/ReadVariableOp?dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?embedding/embedding_lookup?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_323702?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*4
_class*
(&loc:@embedding/embedding_lookup/323702*,
_output_shapes
:??????????*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/323702*,
_output_shapes
:???????????
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d/Conv1D/ExpandDims
ExpandDims.embedding/embedding_lookup/Identity_1:output:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:? *
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:? ?
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

??????????
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? b
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*+
_output_shapes
:????????? l
*global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_max_pooling1d/MaxMaxconv1d/Relu:activations:03global_max_pooling1d/Max/reduction_indices:output:0*
T0*'
_output_shapes
:????????? ?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense_10/MatMulMatMul!global_max_pooling1d/Max:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_10/SoftmaxSoftmaxdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_10/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp^embedding/embedding_lookupE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?g
?
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323510
input_5U
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	$
embedding_323495:
?u?$
conv1d_323498:? 
conv1d_323500: !
dense_10_323504: 
dense_10_323506:
identity??conv1d/StatefulPartitionedCall? dense_10/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2[
text_vectorization/StringLowerStringLowerinput_5*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_323495*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_323217?
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_323498conv1d_323500*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_323237?
$global_max_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_323151?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_10_323504dense_10_323506*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_323255x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall"^embedding/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
-__inference_Conv1D_Model_layer_call_fn_323652

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?u? 
	unknown_4:? 
	unknown_5: 
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
	*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323401o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_conv1d_layer_call_fn_323831

inputs
unknown:? 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_323237s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
;
__inference__creator_323883
identity??
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name1858*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?g
?
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323575
input_5U
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	$
embedding_323560:
?u?$
conv1d_323563:? 
conv1d_323565: !
dense_10_323569: 
dense_10_323571:
identity??conv1d/StatefulPartitionedCall? dense_10/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2[
text_vectorization/StringLowerStringLowerinput_5*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_323560*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_323217?
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_323563conv1d_323565*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_323237?
$global_max_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_323151?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_10_323569dense_10_323571*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_323255x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall"^embedding/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_embedding_layer_call_and_return_conditional_losses_323217

inputs	+
embedding_lookup_323211:
?u?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_323211inputs*
Tindices0	**
_class 
loc:@embedding_lookup/323211*,
_output_shapes
:??????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/323211*,
_output_shapes
:???????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:??????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_10_layer_call_and_return_conditional_losses_323878

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
$__inference_signature_wrapper_323606
input_5
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:
?u? 
	unknown_4:? 
	unknown_5: 
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
	*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_323141o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?g
?
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323262

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	$
embedding_323218:
?u?$
conv1d_323238:? 
conv1d_323240: !
dense_10_323256: 
dense_10_323258:
identity??conv1d/StatefulPartitionedCall? dense_10/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_323218*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_323217?
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_323238conv1d_323240*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_323237?
$global_max_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_323151?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_10_323256dense_10_323258*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_323255x
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall"^embedding/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_restore_fn_323938
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
7
input_5,
serving_default_input_5:0?????????>
dense_102
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
P
	keras_api
_lookup_layer
_adapt_function"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias
 "_jit_compiled_convolution_op"
_tf_keras_layer
?
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
?
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias"
_tf_keras_layer
C
1
 2
!3
/4
05"
trackable_list_wrapper
C
0
 1
!2
/3
04"
trackable_list_wrapper
 "
trackable_list_wrapper
?
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
6trace_0
7trace_1
8trace_2
9trace_32?
-__inference_Conv1D_Model_layer_call_fn_323283
-__inference_Conv1D_Model_layer_call_fn_323629
-__inference_Conv1D_Model_layer_call_fn_323652
-__inference_Conv1D_Model_layer_call_fn_323445?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z6trace_0z7trace_1z8trace_2z9trace_3
?
:trace_0
;trace_1
<trace_2
=trace_32?
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323729
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323806
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323510
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323575?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z:trace_0z;trace_1z<trace_2z=trace_3
?B?
!__inference__wrapped_model_323141input_5"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
>iter
	?decay
@learning_rate
Amomentum
Brho	rms|	 rms}	!rms~	/rms
0rms?"
	optimizer
,
Cserving_default"
signature_map
"
_generic_user_object
L
D	keras_api
Elookup_table
Ftoken_counts"
_tf_keras_layer
?
Gtrace_02?
__inference_adapt_step_8075?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zGtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
Mtrace_02?
*__inference_embedding_layer_call_fn_323813?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zMtrace_0
?
Ntrace_02?
E__inference_embedding_layer_call_and_return_conditional_losses_323822?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zNtrace_0
(:&
?u?2embedding/embeddings
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
Ttrace_02?
'__inference_conv1d_layer_call_fn_323831?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zTtrace_0
?
Utrace_02?
B__inference_conv1d_layer_call_and_return_conditional_losses_323847?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zUtrace_0
$:"? 2conv1d/kernel
: 2conv1d/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
?
[trace_02?
5__inference_global_max_pooling1d_layer_call_fn_323852?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z[trace_0
?
\trace_02?
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_323858?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z\trace_0
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
?
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
?
btrace_02?
)__inference_dense_10_layer_call_fn_323867?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zbtrace_0
?
ctrace_02?
D__inference_dense_10_layer_call_and_return_conditional_losses_323878?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zctrace_0
!: 2dense_10/kernel
:2dense_10/bias
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_Conv1D_Model_layer_call_fn_323283input_5"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_Conv1D_Model_layer_call_fn_323629inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_Conv1D_Model_layer_call_fn_323652inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_Conv1D_Model_layer_call_fn_323445input_5"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323729inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323806inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323510input_5"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323575input_5"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
?B?
$__inference_signature_wrapper_323606input_5"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
f
f_initializer
g_create_resource
h_initialize
i_destroy_resourceR jtf.StaticHashTable
L
j_create_resource
k_initialize
l_destroy_resourceR Z

 ??
?B?
__inference_adapt_step_8075iterator"?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
*__inference_embedding_layer_call_fn_323813inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
E__inference_embedding_layer_call_and_return_conditional_losses_323822inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
'__inference_conv1d_layer_call_fn_323831inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
B__inference_conv1d_layer_call_and_return_conditional_losses_323847inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
5__inference_global_max_pooling1d_layer_call_fn_323852inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_323858inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_dense_10_layer_call_fn_323867inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_dense_10_layer_call_and_return_conditional_losses_323878inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
N
m	variables
n	keras_api
	ototal
	pcount"
_tf_keras_metric
^
q	variables
r	keras_api
	stotal
	tcount
u
_fn_kwargs"
_tf_keras_metric
"
_generic_user_object
?
vtrace_02?
__inference__creator_323883?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? zvtrace_0
?
wtrace_02?
__inference__initializer_323891?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? zwtrace_0
?
xtrace_02?
__inference__destroyer_323896?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? zxtrace_0
?
ytrace_02?
__inference__creator_323901?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? zytrace_0
?
ztrace_02?
__inference__initializer_323906?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? zztrace_0
?
{trace_02?
__inference__destroyer_323911?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z{trace_0
.
o0
p1"
trackable_list_wrapper
-
m	variables"
_generic_user_object
:  (2total
:  (2count
.
s0
t1"
trackable_list_wrapper
-
q	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
?B?
__inference__creator_323883"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__initializer_323891"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_323896"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__creator_323901"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__initializer_323906"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_323911"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
2:0
?u?2 RMSprop/embedding/embeddings/rms
.:,? 2RMSprop/conv1d/kernel/rms
#:! 2RMSprop/conv1d/bias/rms
+:) 2RMSprop/dense_10/kernel/rms
%:#2RMSprop/dense_10/bias/rms
?B?
__inference_save_fn_323930checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_323938restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_5jtf.TrackableConstant?
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323510kE??? !/04?1
*?'
?
input_5?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323575kE??? !/04?1
*?'
?
input_5?????????
p

 
? "%?"
?
0?????????
? ?
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323729jE??? !/03?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_Conv1D_Model_layer_call_and_return_conditional_losses_323806jE??? !/03?0
)?&
?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
-__inference_Conv1D_Model_layer_call_fn_323283^E??? !/04?1
*?'
?
input_5?????????
p 

 
? "???????????
-__inference_Conv1D_Model_layer_call_fn_323445^E??? !/04?1
*?'
?
input_5?????????
p

 
? "???????????
-__inference_Conv1D_Model_layer_call_fn_323629]E??? !/03?0
)?&
?
inputs?????????
p 

 
? "???????????
-__inference_Conv1D_Model_layer_call_fn_323652]E??? !/03?0
)?&
?
inputs?????????
p

 
? "??????????7
__inference__creator_323883?

? 
? "? 7
__inference__creator_323901?

? 
? "? 9
__inference__destroyer_323896?

? 
? "? 9
__inference__destroyer_323911?

? 
? "? B
__inference__initializer_323891E???

? 
? "? ;
__inference__initializer_323906?

? 
? "? ?
!__inference__wrapped_model_323141qE??? !/0,?)
"?
?
input_5?????????
? "3?0
.
dense_10"?
dense_10?????????m
__inference_adapt_step_8075NF?C?@
9?6
4?1?
??????????IteratorSpec 
? "
 ?
B__inference_conv1d_layer_call_and_return_conditional_losses_323847e !4?1
*?'
%?"
inputs??????????
? ")?&
?
0????????? 
? ?
'__inference_conv1d_layer_call_fn_323831X !4?1
*?'
%?"
inputs??????????
? "?????????? ?
D__inference_dense_10_layer_call_and_return_conditional_losses_323878\/0/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? |
)__inference_dense_10_layer_call_fn_323867O/0/?,
%?"
 ?
inputs????????? 
? "???????????
E__inference_embedding_layer_call_and_return_conditional_losses_323822`/?,
%?"
 ?
inputs?????????	
? "*?'
 ?
0??????????
? ?
*__inference_embedding_layer_call_fn_323813S/?,
%?"
 ?
inputs?????????	
? "????????????
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_323858wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+
$?!
0??????????????????
? ?
5__inference_global_max_pooling1d_layer_call_fn_323852jE?B
;?8
6?3
inputs'???????????????????????????
? "!???????????????????z
__inference_restore_fn_323938YFK?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_323930?F&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
$__inference_signature_wrapper_323606|E??? !/07?4
? 
-?*
(
input_5?
input_5?????????"3?0
.
dense_10"?
dense_10?????????