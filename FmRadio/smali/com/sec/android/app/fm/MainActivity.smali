.class public Lcom/sec/android/app/fm/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;
.implements Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;
.implements Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/MainActivity$MyHandler;,
        Lcom/sec/android/app/fm/MainActivity$Callback;
    }
.end annotation


# static fields
.field public static AUTO_SCAN:Z

.field public static BASE_FREQ:F

.field public static BASE_FREQ_PHILIPHINES:F

.field public static IS_BIGGER_THAN_MDPI:Z

.field public static MAXFREQ:F

.field public static MAX_CHANNEL:J

.field public static MAX_FREQ:F

.field public static MIN_CHANNEL:J

.field private static final RECORDING_VOLUME:I

.field public static _instance:Lcom/sec/android/app/fm/MainActivity;

.field static autoOffToast:Landroid/widget/Toast;

.field public static mEarphoneToast:Landroid/widget/Toast;

.field static toastTvout:Landroid/widget/Toast;

.field private static updateRTWithRTP:Z


# instance fields
.field private final DISPLAY_POWER_NONE:I

.field private final DISPLAY_POWER_OFF:I

.field private final DISPLAY_POWER_ON:I

.field private final INDEX_NEXT:I

.field private final INDEX_PLAY:I

.field private final INDEX_PREVIOUS:I

.field private final INDEX_STOP:I

.field private final INDEX_VOLUME_DOWN:I

.field private final INDEX_VOLUME_UP:I

.field private final NOTIFICATION_INFO:I

.field private RTPlus_album:Ljava/lang/String;

.field private RTPlus_perf:Ljava/lang/String;

.field SoundPathMenu:Landroid/view/Menu;

.field private checkMemFull:Z

.field count:I

.field firstScannedChannel:F

.field private img1DelIcon:Landroid/widget/ImageView;

.field private img2DelIcon:Landroid/widget/ImageView;

.field private img3DelIcon:Landroid/widget/ImageView;

.field private img4DelIcon:Landroid/widget/ImageView;

.field private img5DelIcon:Landroid/widget/ImageView;

.field private img6DelIcon:Landroid/widget/ImageView;

.field private isWarningckMemFull:Z

.field private layout1A:Landroid/view/ViewGroup;

.field private layout1B:Landroid/view/ViewGroup;

.field private mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

.field public mAudioManager:Landroid/media/AudioManager;

.field private mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

.field private mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

.field mBlinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverScreen:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverTurningOn:Landroid/content/BroadcastReceiver;

.field private mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

.field private mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

.field private mCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/MainActivity$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackRunnable:Ljava/lang/Runnable;

.field private mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

.field private mChangeFreqEdit:Landroid/widget/EditText;

.field private mChannelAlreadyAddedDialog:Landroid/app/AlertDialog;

.field public mChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/data/Channel;",
            ">;"
        }
    .end annotation
.end field

.field mChannelSelectRunnable:Ljava/lang/Runnable;

.field public mClickListener:Landroid/view/View$OnClickListener;

.field public mCurrentFadeVolume:I

.field public mCurrentFreq:F

.field public mCurrentchannel:J

.field private mDialAnimView:Landroid/widget/ImageView;

.field private mDialAnimation:Landroid/view/animation/AlphaAnimation;

.field private mDialerChannelChangeHandler:Landroid/os/Handler;

.field private mDisplayPower:I

.field private mDuringFirstAceess:Z

.field private mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

.field private mFavFeq:[F

.field private mFavScrollView:Lcom/sec/android/app/fm/ui/FavoriteScrollView;

.field private mFileName:Ljava/lang/String;

.field private mFileTitle:Ljava/lang/String;

.field private mFreqAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFreqDispView:Landroid/view/View;

.field public mFrqBgView:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

.field private mFrqCover:Landroid/view/View;

.field private mFrqLayout:Landroid/view/View;

.field private mFrqNum2Dim:Landroid/widget/ImageView;

.field private mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

.field public mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

.field private mHiddenFileName:Ljava/lang/String;

.field private mHideBubble:Ljava/lang/Runnable;

.field private mInformationView:Landroid/view/View;

.field private mInitialAceess:Z

.field private mIsActive:Z

.field private mIsBargeInNotification:Z

.field private mIsBubbleRunable:Z

.field public mIsFadeVolume:Z

.field private mIsLastPlay:Z

.field private mIsOptionsMenuShowing:Z

.field private mIsPlaybackMode:Z

.field public mIsRecording:Z

.field private mIsRecordingPause:Z

.field private mIsRoundOn:Landroid/widget/ImageView;

.field public mIsShowCustomOptionMenu:Z

.field private mIsUpdateUI:Z

.field private mKeyListener:Landroid/view/View$OnKeyListener;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMenu:Landroid/view/Menu;

.field private mMenuView:Landroid/widget/ImageView;

.field private mMotionDialog:Lcom/sec/android/app/fm/ui/MotionDialog;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mMyApps:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field mNextDown:Z

.field mNoChannelToast:Landroid/widget/Toast;

.field private mOrientation:I

.field private mPalmReceiver:Landroid/content/BroadcastReceiver;

.field private mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

.field public mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field private mPowerView:Landroid/widget/ImageView;

.field private mPrevButton:Landroid/widget/ImageButton;

.field mPrevDown:Z

.field public mProgressbarParent:Landroid/view/ViewGroup;

.field private mRDSChName:Ljava/lang/String;

.field private mRDSText:Ljava/lang/String;

.field private mRTPText:Ljava/lang/String;

.field private mRdsPanel:Landroid/widget/LinearLayout;

.field private mRecHour1:Landroid/widget/ImageView;

.field private mRecHour2:Landroid/widget/ImageView;

.field private mRecMin1:Landroid/widget/ImageView;

.field private mRecMin2:Landroid/widget/ImageView;

.field private mRecSec1:Landroid/widget/ImageView;

.field private mRecSec2:Landroid/widget/ImageView;

.field private mRecTime:Landroid/widget/LinearLayout;

.field private mRecordAfterOn:Z

.field private mRecordAniButton:Landroid/widget/ImageView;

.field private mRecordButton:Landroid/widget/ImageButton;

.field private mRecordCancelButton:Landroid/widget/ImageView;

.field private mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

.field private mRecordPauseResumeButton:Landroid/widget/ImageView;

.field private mRecordSaveDialog:Landroid/app/AlertDialog;

.field private mRecordStopButton:Landroid/widget/ImageView;

.field mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

.field private mRecording:Landroid/widget/LinearLayout;

.field private mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

.field private mReturnFadeVolume:I

.field private mSavedSelectedFreq:F

.field private mScanFinished:Z

.field private mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

.field private mScanSelectDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

.field private mSeconds:I

.field private mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field public mSeekBarParent:Landroid/view/ViewGroup;

.field private mSeekBarText:Landroid/widget/TextView;

.field private mSeeking:Landroid/widget/TextView;

.field private mSelFavFreq:[Ljava/lang/Object;

.field private mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

.field private mShowRecordSaveDialogOnResume:Z

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTTSConfirmDialog:Landroid/app/AlertDialog;

.field private mTagsAvailable:Z

.field private mTagsButton:Landroid/widget/ImageButton;

.field private mToast:Landroid/widget/Toast;

.field public mTouchListener:Landroid/view/View$OnTouchListener;

.field private mTxtRadioStatusChName:Landroid/widget/TextView;

.field private mTxtRadioStatusText:Landroid/widget/TextView;

.field private mVolumeBtn:Landroid/widget/ImageButton;

.field private mVolumeChangedFromRadio:Z

.field mVolumeRec:Landroid/content/BroadcastReceiver;

.field private mWillRemove:Z

.field private mWillRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/data/Channel;",
            ">;"
        }
    .end annotation
.end field

.field mWillTune:J

.field private mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

.field private mbtnAllChannel:Landroid/widget/Button;

.field private mbtnCanncel:Landroid/widget/Button;

.field private mbtnDone:Landroid/widget/Button;

.field private mbtnScan:Landroid/widget/Button;

.field onToast:Landroid/widget/Toast;

.field private recordToast:Landroid/widget/Toast;

.field private toast:Landroid/widget/Toast;

.field private toastAirplane:Landroid/widget/Toast;

.field private toastBatteryLow:Landroid/widget/Toast;

.field private toastError:Landroid/widget/Toast;

.field toastPlaying:Landroid/widget/Toast;

.field private txt1Freq:Landroid/widget/TextView;

.field private unableScanToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x42d8

    .line 485
    const/high16 v0, 0x42af

    sput v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 487
    const v0, 0x42b0999a

    sput v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ_PHILIPHINES:F

    .line 529
    const-wide/16 v0, 0x2a30

    sput-wide v0, Lcom/sec/android/app/fm/MainActivity;->MAX_CHANNEL:J

    .line 531
    sput v2, Lcom/sec/android/app/fm/MainActivity;->MAX_FREQ:F

    .line 533
    sput v2, Lcom/sec/android/app/fm/MainActivity;->MAXFREQ:F

    .line 563
    const-wide/16 v0, 0x222e

    sput-wide v0, Lcom/sec/android/app/fm/MainActivity;->MIN_CHANNEL:J

    .line 565
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    .line 618
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    .line 680
    sput-boolean v3, Lcom/sec/android/app/fm/MainActivity;->AUTO_SCAN:Z

    .line 1270
    sput-boolean v3, Lcom/sec/android/app/fm/MainActivity;->updateRTWithRTP:Z

    .line 2244
    sget v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_RECORDINGVOLUME:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_RECORDINGVOLUME:I

    :goto_0
    sput v0, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    return-void

    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 601
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSavedSelectedFreq:F

    .line 620
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    .line 622
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->unableScanToast:Landroid/widget/Toast;

    .line 884
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->img1DelIcon:Landroid/widget/ImageView;

    .line 886
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->img2DelIcon:Landroid/widget/ImageView;

    .line 888
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->img3DelIcon:Landroid/widget/ImageView;

    .line 890
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->img4DelIcon:Landroid/widget/ImageView;

    .line 892
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->img5DelIcon:Landroid/widget/ImageView;

    .line 894
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->img6DelIcon:Landroid/widget/ImageView;

    .line 896
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    .line 898
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->layout1B:Landroid/view/ViewGroup;

    .line 901
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 913
    new-array v0, v6, [Lcom/sec/android/app/fm/ui/FavoriteButton;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    .line 923
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$1;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackRunnable:Ljava/lang/Runnable;

    .line 931
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelAlreadyAddedDialog:Landroid/app/AlertDialog;

    .line 934
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    .line 936
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$2;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelSelectRunnable:Ljava/lang/Runnable;

    .line 974
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->mPrevDown:Z

    .line 976
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->mNextDown:Z

    .line 978
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$3;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1046
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$4;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 1060
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$5;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 1087
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$6;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 1259
    const-wide/16 v0, 0x222e

    iput-wide v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    .line 1261
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 1263
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialerChannelChangeHandler:Landroid/os/Handler;

    .line 1265
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFavFeq:[F

    .line 1267
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->SoundPathMenu:Landroid/view/Menu;

    .line 1276
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$7;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

    .line 2077
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$8;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHideBubble:Ljava/lang/Runnable;

    .line 2194
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 2197
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 2204
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordSaveDialog:Landroid/app/AlertDialog;

    .line 2206
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->mShowRecordSaveDialogOnResume:Z

    .line 2211
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 2214
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mScanSelectDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 2228
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    .line 2232
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    .line 2234
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    .line 2255
    iput v3, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    .line 2261
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$9;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeRec:Landroid/content/BroadcastReceiver;

    .line 2290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemoveList:Ljava/util/ArrayList;

    .line 2301
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    .line 2303
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->toastAirplane:Landroid/widget/Toast;

    .line 2305
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->toastBatteryLow:Landroid/widget/Toast;

    .line 2307
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->toastError:Landroid/widget/Toast;

    .line 2309
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->toastPlaying:Landroid/widget/Toast;

    .line 2311
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt1Freq:Landroid/widget/TextView;

    .line 5376
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z

    .line 5379
    iput v3, p0, Lcom/sec/android/app/fm/MainActivity;->mReturnFadeVolume:I

    .line 5766
    iput-boolean v4, p0, Lcom/sec/android/app/fm/MainActivity;->checkMemFull:Z

    .line 5768
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->isWarningckMemFull:Z

    .line 7040
    iput v3, p0, Lcom/sec/android/app/fm/MainActivity;->DISPLAY_POWER_NONE:I

    .line 7042
    iput v4, p0, Lcom/sec/android/app/fm/MainActivity;->DISPLAY_POWER_ON:I

    .line 7044
    iput v5, p0, Lcom/sec/android/app/fm/MainActivity;->DISPLAY_POWER_OFF:I

    .line 7254
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    .line 7308
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverTurningOn:Landroid/content/BroadcastReceiver;

    .line 7330
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 7451
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$42;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$42;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBlinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 7614
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverScreen:Landroid/content/BroadcastReceiver;

    .line 7647
    iput v3, p0, Lcom/sec/android/app/fm/MainActivity;->INDEX_NEXT:I

    .line 7649
    iput v4, p0, Lcom/sec/android/app/fm/MainActivity;->INDEX_PREVIOUS:I

    .line 7651
    iput v5, p0, Lcom/sec/android/app/fm/MainActivity;->INDEX_STOP:I

    .line 7653
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->INDEX_PLAY:I

    .line 7655
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->INDEX_VOLUME_UP:I

    .line 7657
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->INDEX_VOLUME_DOWN:I

    .line 7660
    const v0, 0x15e79

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->NOTIFICATION_INFO:I

    .line 7867
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$45;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$45;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->handleAFClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->handleEarPhoneClick()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->updateRecordingPanelUI()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->stopFMRecording()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->updateRecordedTime()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/fm/MainActivity;)[Lcom/sec/android/app/fm/ui/FavoriteButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/fm/MainActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/fm/MainActivity;FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/fm/MainActivity;->addFavChannel(FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/fm/MainActivity;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFavFeq:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->checkInitialAccess()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/fm/MainActivity;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/fm/MainActivity;Lcom/sec/android/app/fm/WorkerThread;)Lcom/sec/android/app/fm/WorkerThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1B:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/fm/MainActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/fm/MainActivity;->toggleParentLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt1Freq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemoveList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/fm/MainActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V

    return-void
.end method

.method static synthetic access$2800()I
    .locals 1

    .prologue
    .line 149
    sget v0, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/fm/MainActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mReturnFadeVolume:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/MainActivity;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/fm/MainActivity;->getNearestScanedFrequency(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->hideRecoder()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->startAllChannelActivity()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDialer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDuringFirstAceess:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mDuringFirstAceess:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->resumeFMRecording()V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->pauseFMRecording()V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsOptionsMenuShowing:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/android/app/fm/MainActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->showCustomOptionMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/MainActivity;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->resetRDS(F)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/sec/android/app/fm/MainActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/sec/android/app/fm/MainActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->getFavBtnIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->refreshVolumeIcon()V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->refreshScanIcon()V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeChangedFromRadio:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeChangedFromRadio:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/sec/android/app/fm/MainActivity;Lcom/sec/android/app/fm/data/Channel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->addChannel(Lcom/sec/android/app/fm/data/Channel;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsUpdateUI:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/android/app/fm/MainActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->updateRecordButton(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqCover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsLastPlay:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/fm/MainActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->setRadioStatusTextVisibility(I)V

    return-void
.end method

.method static synthetic access$6000()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->updateRTWithRTP:Z

    return v0
.end method

.method static synthetic access$6002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    sput-boolean p0, Lcom/sec/android/app/fm/MainActivity;->updateRTWithRTP:Z

    return p0
.end method

.method static synthetic access$6100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRdsPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDisplayView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->saveCurrentFreq()V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsActive:Z

    return v0
.end method

.method static synthetic access$6500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanSelectDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->cancelFMRecording()V

    return-void
.end method

.method static synthetic access$7500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/RenameDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/data/Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/sec/android/app/fm/MainActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSavedSelectedFreq:F

    return v0
.end method

.method static synthetic access$7800(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHiddenFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/sec/android/app/fm/MainActivity;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->myOnResume()V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->setPlayPauseImage()V

    return-void
.end method

.method private addChannel(Lcom/sec/android/app/fm/data/Channel;)V
    .locals 4
    .parameter "channel"

    .prologue
    .line 2323
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2325
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2326
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2327
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2328
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2329
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2330
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity$Callback;->notifyUI()V

    .line 2329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2333
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2334
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 2335
    return-void

    .line 2333
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private addFavChannel(FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0a0010

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2338
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 2339
    sget p1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 2341
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 2343
    if-nez v0, :cond_1

    .line 2344
    new-instance v0, Lcom/sec/android/app/fm/data/Channel;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/fm/data/Channel;-><init>(FLjava/lang/String;)V

    .line 2345
    iput-boolean v5, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 2346
    iput p3, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 2347
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->addChannel(Lcom/sec/android/app/fm/data/Channel;)V

    .line 2371
    :goto_0
    return-object v0

    .line 2351
    :cond_1
    iget-boolean v1, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-nez v1, :cond_4

    .line 2352
    iput-boolean v5, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 2354
    iget-object v1, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2355
    :cond_2
    iput-object p2, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 2356
    :cond_3
    iput p3, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 2357
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    goto :goto_0

    .line 2362
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_5

    .line 2363
    invoke-static {p0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    .line 2370
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2371
    const/4 v0, 0x0

    goto :goto_0

    .line 2366
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 2367
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private cancelClicked()V
    .locals 1

    .prologue
    .line 2376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    .line 2378
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2379
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->invisibleDelIcons()V

    .line 2380
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V

    .line 2382
    return-void
.end method

.method private cancelFMRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6505
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->releaseFMRecorder()V

    .line 6508
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setRecordMode(I)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6514
    :goto_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->setPauseResumeBtnImage(Z)V

    .line 6523
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->deleteRecordingHiddenFile()V

    .line 6525
    return-void

    .line 6509
    :catch_0
    move-exception v0

    .line 6510
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private changeVolume(I)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 2386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " changeVolume volumeAdjust = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2388
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 2389
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    sget v1, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2392
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, p1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 2394
    return-void
.end method

.method private changeVolumeIcon()V
    .locals 3

    .prologue
    .line 2397
    const-string v0, "RNR"

    const-string v1, "changeVolumeIcon"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 2400
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v0

    .line 2402
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-nez v0, :cond_0

    .line 2404
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2415
    :goto_0
    return-void

    .line 2406
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2408
    :catch_0
    move-exception v0

    .line 2410
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2411
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private checkInitialAccess()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2463
    const-string v0, "checkInitialAccess"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2464
    const-string v0, "test"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2465
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2468
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mDuringFirstAceess:Z

    .line 2469
    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->startScan(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2471
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2472
    const v0, 0x7f0a0040

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2474
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2483
    :cond_0
    :goto_0
    sput-boolean v2, Lcom/sec/android/app/fm/MainActivity;->AUTO_SCAN:Z

    .line 2484
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z

    .line 2487
    :cond_1
    :try_start_1
    const-string v0, "test"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 2488
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2498
    :cond_2
    :goto_1
    return-void

    .line 2476
    :catch_0
    move-exception v0

    .line 2478
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2479
    :catch_1
    move-exception v0

    goto :goto_0

    .line 2490
    :catch_2
    move-exception v0

    .line 2492
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 2493
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static checkSettingAlarm(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 687
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 689
    :catch_0
    move-exception v0

    .line 691
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 696
    :cond_1
    :goto_1
    const-string v0, "SettingsPreference"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "autoonoff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 700
    if-eqz v0, :cond_0

    .line 702
    invoke-static {v0, p1}, Lcom/sec/android/app/fm/MainActivity;->setOffAlarm(ILandroid/content/Context;)V

    goto :goto_0

    .line 692
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private createPalmFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 7820
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 7821
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7822
    return-object v0
.end method

.method private deleteRecordingHiddenFile()V
    .locals 3

    .prologue
    .line 5383
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHiddenFileName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5385
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHiddenFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5386
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5387
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5393
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 5389
    :catch_0
    move-exception v0

    .line 5390
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "deleteRecordingHiddenFile exception"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAvailableStorage(Z)Z
    .locals 11
    .parameter

    .prologue
    const-wide/32 v9, 0x100000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5783
    iput-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->checkMemFull:Z

    .line 5785
    const-string v1, "SettingsPreference"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5786
    const-string v2, "storage"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storageDirectory = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5791
    const-string v2, "mounted"

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5793
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 5794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The recording path is changed to phone. storageDirectory = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5798
    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 5799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stat = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5800
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v5, v1

    mul-long/2addr v3, v5

    .line 5801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "avaliableSize = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " getAvailableBlocks = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " getBlockSize = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5804
    const-string v1, "LOW_STORAGE_THRESHOLD = 1048576"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5806
    if-eqz p1, :cond_3

    .line 5807
    const-wide/32 v1, 0x157800

    cmp-long v1, v3, v1

    if-gez v1, :cond_1

    .line 5808
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->checkMemFull:Z

    .line 5809
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_2

    .line 5810
    const v1, 0x7f0a006b

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    .line 5815
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5847
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->checkMemFull:Z

    :goto_2
    return v0

    .line 5812
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 5813
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    const v2, 0x7f0a006b

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5843
    :catch_0
    move-exception v1

    .line 5844
    const-string v1, "getAvailableStorage - exception. return 0"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 5818
    :cond_3
    :try_start_2
    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->isWarningckMemFull:Z

    if-nez v1, :cond_4

    const-wide/32 v1, 0x128870

    cmp-long v1, v3, v1

    if-gez v1, :cond_4

    .line 5820
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->isWarningckMemFull:Z

    .line 5821
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_6

    .line 5822
    const v1, 0x7f0a00ce

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    sub-long v6, v3, v9

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/fm/MainActivity;->getByte(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    .line 5832
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5834
    :cond_4
    cmp-long v1, v3, v9

    if-gez v1, :cond_1

    .line 5835
    const-string v1, "getAvailableStorage - low"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5836
    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v1, :cond_5

    .line 5837
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->stopFMRecording()V

    .line 5840
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->checkMemFull:Z

    goto :goto_1

    .line 5828
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 5829
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    const v2, 0x7f0a00ce

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sub-long v7, v3, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/fm/MainActivity;->getByte(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public static getCurrentFreq(Landroid/content/Context;)F
    .locals 3
    .parameter

    .prologue
    .line 6075
    .line 6076
    sget-object v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DEFAULTCHANNEL:Ljava/lang/String;

    const-string v1, "88.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6077
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ_PHILIPHINES:F

    .line 6084
    :goto_0
    const-string v1, "localpreference"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6086
    if-nez v1, :cond_1

    .line 6087
    const-string v1, "FMapp"

    const-string v2, "sharedPref is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6092
    :goto_1
    return v0

    .line 6079
    :cond_0
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    goto :goto_0

    .line 6091
    :cond_1
    const-string v2, "initialfreq"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_1
.end method

.method private getFavBtnIndex(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 2622
    const/4 v0, 0x0

    .line 2623
    .local v0, pos:I
    packed-switch p1, :pswitch_data_0

    .line 2661
    :goto_0
    return v0

    .line 2625
    :pswitch_0
    const/4 v0, 0x0

    .line 2626
    goto :goto_0

    .line 2628
    :pswitch_1
    const/4 v0, 0x1

    .line 2629
    goto :goto_0

    .line 2631
    :pswitch_2
    const/4 v0, 0x2

    .line 2632
    goto :goto_0

    .line 2634
    :pswitch_3
    const/4 v0, 0x3

    .line 2635
    goto :goto_0

    .line 2637
    :pswitch_4
    const/4 v0, 0x4

    .line 2638
    goto :goto_0

    .line 2640
    :pswitch_5
    const/4 v0, 0x5

    .line 2641
    goto :goto_0

    .line 2643
    :pswitch_6
    const/4 v0, 0x6

    .line 2644
    goto :goto_0

    .line 2646
    :pswitch_7
    const/4 v0, 0x7

    .line 2647
    goto :goto_0

    .line 2649
    :pswitch_8
    const/16 v0, 0x8

    .line 2650
    goto :goto_0

    .line 2652
    :pswitch_9
    const/16 v0, 0x9

    .line 2653
    goto :goto_0

    .line 2655
    :pswitch_a
    const/16 v0, 0xa

    .line 2656
    goto :goto_0

    .line 2658
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 2623
    nop

    :pswitch_data_0
    .packed-switch 0x7f070067
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private getFavFreq(Landroid/view/View;)[Ljava/lang/Object;
    .locals 7
    .parameter "parentView"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2693
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getFavBtnIndex(I)I

    move-result v0

    .line 2695
    .local v0, pos:I
    if-ltz v0, :cond_0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 2696
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFavFeq:[F

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2700
    :goto_0
    return-object v1

    :cond_0
    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    goto :goto_0
.end method

.method private getNearestScanedFrequency(J)J
    .locals 13
    .parameter "baseFreq"

    .prologue
    const-wide/16 v11, 0x0

    const/high16 v10, 0x447a

    .line 191
    const-wide/16 v2, 0x0

    .line 192
    .local v2, nearestFreq:J
    const-wide/16 v6, 0x0

    .line 193
    .local v6, tmpDiff:J
    const-wide/32 v4, 0xc350

    .line 196
    .local v4, smallestDiff:J
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/data/Channel;

    .line 198
    .local v0, c:Lcom/sec/android/app/fm/data/Channel;
    iget v8, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    mul-float/2addr v8, v10

    float-to-long v8, v8

    sub-long v6, p1, v8

    .line 199
    cmp-long v8, v6, v11

    if-gez v8, :cond_1

    .line 200
    neg-long v6, v6

    .line 201
    :cond_1
    sub-long v8, v6, v4

    cmp-long v8, v8, v11

    if-gez v8, :cond_0

    .line 202
    move-wide v4, v6

    .line 203
    iget v8, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    mul-float/2addr v8, v10

    float-to-long v2, v8

    goto :goto_0

    .line 208
    .end local v0           #c:Lcom/sec/android/app/fm/data/Channel;
    :cond_2
    return-wide v2
.end method

.method private getRecordFileTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 5705
    const v0, 0x7f0a0018

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5709
    const-string v8, "idx"

    .line 5711
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cast(replace(substr(_data, ?, 1000), \'.m4a\', \'\') as INTEGER) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    .line 5716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5718
    const-string v1, "_data like ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5720
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5722
    new-array v4, v11, [Ljava/lang/String;

    const-string v0, "%d"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 5727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC limit 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5729
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5732
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5734
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 5735
    if-lez v0, :cond_1

    .line 5736
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5737
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 5739
    :goto_0
    if-eqz v1, :cond_0

    .line 5740
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5742
    :cond_0
    const-string v1, "%s %03d"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v7, v2, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method private handleAFClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2722
    const-string v0, "SettingsPreference"

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2724
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "SettingsPreference"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "af"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2728
    if-nez v1, :cond_0

    .line 2730
    const-string v1, "af"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2731
    const-string v1, "[AF click ]AF on"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2737
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2738
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 2739
    return-void

    .line 2734
    :cond_0
    const-string v1, "af"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2735
    const-string v1, "[AF click ]AF off"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleEarPhoneClick()V
    .locals 6

    .prologue
    const v5, 0x7f0a00c3

    const v4, 0x7f0a00c2

    const/16 v3, 0xa

    const/4 v1, 0x0

    .line 2742
    .line 2762
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 2763
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/sec/android/app/fm/MainActivity;->mReturnFadeVolume:I

    invoke-virtual {v0, v3, v2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2765
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2766
    const-string v0, "[speaker click ]speaker on"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2767
    const-string v0, "fm_radio_mute=1"

    .line 2768
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2770
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2775
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_3

    .line 2776
    sget v0, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    .line 2777
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/fm/MainActivity;->mReturnFadeVolume:I

    .line 2781
    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V

    .line 2784
    if-eqz v0, :cond_1

    .line 2786
    const-string v2, "fm_radio_mute=0"

    .line 2787
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2792
    :cond_1
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    if-nez v2, :cond_4

    .line 2793
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    .line 2798
    :goto_2
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2837
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->setSoundSettings(Lcom/samsung/media/fmradio/FMPlayer;Landroid/media/AudioManager;Landroid/content/Context;)V

    .line 2839
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 2840
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 2842
    :cond_2
    return-void

    .line 2771
    :catch_0
    move-exception v0

    .line 2772
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 2779
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_1

    .line 2796
    :cond_4
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v1, v5}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2

    .line 2800
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2801
    const-string v0, "[speaker click ]speaker off"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2802
    const-string v0, "fm_radio_mute=1"

    .line 2803
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2805
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2810
    :goto_4
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_7

    .line 2811
    sget v0, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    .line 2812
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/fm/MainActivity;->mReturnFadeVolume:I

    .line 2816
    :goto_5
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V

    .line 2818
    if-eqz v0, :cond_6

    .line 2820
    const-string v2, "fm_radio_mute=0"

    .line 2821
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2827
    :cond_6
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    if-nez v2, :cond_8

    .line 2828
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    .line 2833
    :goto_6
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 2806
    :catch_1
    move-exception v0

    .line 2807
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_4

    .line 2814
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_5

    .line 2831
    :cond_8
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_6

    :cond_9
    move v0, v1

    goto/16 :goto_3
.end method

.method private hideBargeInNotification()V
    .locals 2

    .prologue
    .line 7731
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 7732
    .local v0, manager:Landroid/app/NotificationManager;
    const v1, 0x15e79

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 7734
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsBargeInNotification:Z

    .line 7736
    return-void
.end method

.method private hideRecoder()V
    .locals 5

    .prologue
    const/16 v4, 0xc9

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2860
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFavScrollView:Lcom/sec/android/app/fm/ui/FavoriteScrollView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->setVisibility(I)V

    .line 2861
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2862
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 2864
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2865
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2866
    iput v2, p0, Lcom/sec/android/app/fm/MainActivity;->mSeconds:I

    .line 2868
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->refreshVolumeIcon()V

    .line 2871
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mIsFadeVolume:Z

    .line 2872
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2873
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 2876
    :cond_0
    return-void
.end method

.method private hideSeekbar()V
    .locals 4

    .prologue
    const/4 v2, 0x5

    .line 2880
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 2882
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2883
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 2884
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2885
    return-void
.end method

.method private invisibleDelIcons()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2924
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img1DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2925
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img2DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2926
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img3DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2927
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img4DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2928
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img5DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2929
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img6DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2930
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->showNormalSoftkeys()V

    .line 2931
    return-void
.end method

.method private isBiggerThanMDPI()Z
    .locals 9

    .prologue
    const/16 v8, 0x168

    const/16 v7, 0xf0

    const/4 v4, 0x0

    const/16 v6, 0x1e0

    const/16 v5, 0x140

    .line 3782
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3784
    .local v0, dsp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 3785
    .local v2, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 3787
    .local v1, height:I
    if-ne v2, v7, :cond_0

    if-eq v1, v5, :cond_1

    :cond_0
    if-ne v2, v5, :cond_2

    if-ne v1, v7, :cond_2

    :cond_1
    move v3, v4

    .line 3794
    :goto_0
    return v3

    .line 3789
    :cond_2
    if-ne v2, v5, :cond_3

    if-eq v1, v6, :cond_4

    :cond_3
    if-ne v2, v6, :cond_5

    if-ne v1, v5, :cond_5

    :cond_4
    move v3, v4

    .line 3790
    goto :goto_0

    .line 3791
    :cond_5
    if-ne v2, v8, :cond_6

    if-eq v1, v6, :cond_7

    :cond_6
    if-ne v2, v6, :cond_8

    if-ne v1, v8, :cond_8

    :cond_7
    move v3, v4

    .line 3792
    goto :goto_0

    .line 3794
    :cond_8
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isGoogleTalkVideoChatRunning(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 7793
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 7795
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 7796
    .local v1, mode:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 7797
    const/4 v2, 0x1

    .line 7800
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isOnCall(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 7754
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 7756
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 7757
    const/4 v1, 0x1

    .line 7774
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOnVoIP(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 7779
    :try_start_0
    const-string v2, "voip"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 7781
    .local v1, voipCall:Landroid/os/IVoIPInterface;
    if-eqz v1, :cond_0

    .line 7782
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 7783
    const/4 v2, 0x1

    .line 7789
    .end local v1           #voipCall:Landroid/os/IVoIPInterface;
    :goto_0
    return v2

    .line 7786
    :catch_0
    move-exception v0

    .line 7787
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 7789
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isUsedVoice(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0a00c9

    const/4 v0, 0x0

    .line 7804
    invoke-static {p0}, Lcom/sec/android/app/fm/MainActivity;->isOnCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/fm/MainActivity;->isOnVoIP(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/fm/MainActivity;->isGoogleTalkVideoChatRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7806
    :cond_0
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    if-nez v1, :cond_2

    .line 7807
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    .line 7812
    :goto_0
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7813
    const/4 v0, 0x1

    .line 7816
    :cond_1
    return v0

    .line 7810
    :cond_2
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private myOnCreate()V
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/high16 v7, 0x42c8

    const v6, 0x7f0a0086

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 2948
    const-string v0, "  myOnCreate ----------"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2950
    const-string v0, "  setContentView ------"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2951
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v5, :cond_6

    .line 2955
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setContentView(I)V

    .line 2958
    :goto_0
    const-string v0, "  setContentView ------ end"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2959
    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FrequencyDialer;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    .line 2960
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f0a0076

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2962
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setOnDegreeChangeListener(Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;)V

    .line 2965
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2967
    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    .line 2968
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->initFreqView()V

    .line 2970
    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqLayout:Landroid/view/View;

    .line 2971
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v0

    const/16 v2, 0x32

    if-ne v0, v2, :cond_0

    .line 2972
    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqNum2Dim:Landroid/widget/ImageView;

    .line 2973
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqNum2Dim:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2975
    :cond_0
    const v0, 0x7f070053

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqCover:Landroid/view/View;

    .line 2977
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2979
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_1

    .line 2980
    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqBgView:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    .line 2981
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqBgView:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->setOnFrequencyChangeListener(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;)V

    .line 2982
    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    .line 2984
    :cond_1
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    .line 2985
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    .line 2986
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    const v2, 0x7f0a0074

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2988
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2989
    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    .line 2990
    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordStopButton:Landroid/widget/ImageView;

    .line 2991
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordStopButton:Landroid/widget/ImageView;

    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f0a008a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2993
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordStopButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2995
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_2

    .line 2996
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 2997
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/fm/MainActivity$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/MainActivity$11;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 3009
    :cond_2
    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    .line 3010
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f0a008c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3012
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3014
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_3

    .line 3015
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 3016
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/fm/MainActivity$12;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/MainActivity$12;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 3039
    :cond_3
    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelButton:Landroid/widget/ImageView;

    .line 3040
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelButton:Landroid/widget/ImageView;

    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f0a008d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3042
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3043
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_4

    .line 3044
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 3045
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/fm/MainActivity$13;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/MainActivity$13;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 3059
    :cond_4
    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mNextButton:Landroid/widget/ImageButton;

    .line 3060
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mNextButton:Landroid/widget/ImageButton;

    const v2, 0x7f0a0079

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3061
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3063
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3064
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3068
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3071
    const v0, 0x7f07005d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPrevButton:Landroid/widget/ImageButton;

    .line 3072
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPrevButton:Landroid/widget/ImageButton;

    const v2, 0x7f0a0078

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3073
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3075
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3076
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3080
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3082
    const v0, 0x7f07005f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;

    .line 3083
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 3084
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;

    const v2, 0x7f0a0096

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3085
    iput-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z

    .line 3087
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mInformationView:Landroid/view/View;

    .line 3090
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const v0, 0x7f070067

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v1

    .line 3091
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const v0, 0x7f070068

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v5

    .line 3092
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/4 v3, 0x2

    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    .line 3093
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v4

    .line 3094
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/4 v3, 0x4

    const v0, 0x7f07006b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    .line 3095
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/4 v3, 0x5

    const v0, 0x7f07006c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    .line 3096
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/4 v3, 0x6

    const v0, 0x7f07006d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    .line 3097
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/4 v3, 0x7

    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    .line 3098
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/16 v3, 0x8

    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    .line 3099
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/16 v3, 0x9

    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    .line 3100
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/16 v3, 0xa

    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    .line 3101
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/16 v3, 0xb

    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    move v0, v1

    .line 3103
    :goto_1
    const/16 v2, 0xc

    if-ge v0, v2, :cond_7

    .line 3104
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    .line 3105
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3106
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 3103
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2953
    :cond_6
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 3120
    :cond_7
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRdsPanel:Landroid/widget/LinearLayout;

    .line 3121
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    .line 3123
    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteScrollView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFavScrollView:Lcom/sec/android/app/fm/ui/FavoriteScrollView;

    .line 3124
    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecording:Landroid/widget/LinearLayout;

    .line 3125
    const v0, 0x7f070075

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecTime:Landroid/widget/LinearLayout;

    .line 3126
    const v0, 0x7f070076

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecHour1:Landroid/widget/ImageView;

    .line 3127
    const v0, 0x7f070077

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecHour2:Landroid/widget/ImageView;

    .line 3128
    const v0, 0x7f070078

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecMin1:Landroid/widget/ImageView;

    .line 3129
    const v0, 0x7f070079

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecMin2:Landroid/widget/ImageView;

    .line 3130
    const v0, 0x7f07007a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecSec1:Landroid/widget/ImageView;

    .line 3131
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecSec2:Landroid/widget/ImageView;

    .line 3132
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    .line 3134
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    .line 3136
    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    .line 3137
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const v2, 0x7f0a0075

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3138
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3140
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_8

    .line 3141
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/fm/MainActivity$14;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/MainActivity$14;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 3163
    :cond_8
    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 3164
    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarText:Landroid/widget/TextView;

    .line 3165
    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    .line 3166
    const v0, 0x7f070062

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    .line 3168
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontEnable(Z)V

    .line 3169
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const v2, 0x7f08000a

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontColor(I)V

    .line 3171
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontSize(I)V

    .line 3174
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setMax(I)V

    .line 3175
    const-string v0, "myOnCreate ------ -mSeekBar.setMax "

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3176
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 3177
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarText:Landroid/widget/TextView;

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3178
    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    .line 3179
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 3180
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleAlign(I)V

    .line 3182
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const v2, 0x7f020120

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleBackgroundDrawable(I)V

    .line 3183
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/high16 v2, 0x4294

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleFontSize(F)V

    .line 3185
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const v2, 0x7f080003

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleFontColor(I)V

    .line 3187
    const v0, 0x7f070055

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenuView:Landroid/widget/ImageView;

    .line 3188
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenuView:Landroid/widget/ImageView;

    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f0a0089

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3190
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenuView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3192
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3193
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenuView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3195
    :cond_9
    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPowerView:Landroid/widget/ImageView;

    .line 3197
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_a

    .line 3198
    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;

    .line 3199
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3202
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->changeVolumeIcon()V

    .line 3204
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->registerForContextMenu()V

    .line 3208
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3209
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J

    move-result-wide v0

    .line 3210
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    .line 3211
    long-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    .line 3213
    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 3214
    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    mul-float/2addr v1, v7

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    .line 3219
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    iget-wide v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setFrequency(JZ)V

    .line 3220
    sget-boolean v1, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-nez v1, :cond_b

    .line 3221
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    iget-wide v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFrequency(J)V

    .line 3223
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting initial freq - on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3253
    :cond_c
    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setPauseResumeBtnImage(Z)V

    .line 3255
    const-string v0, "  myOnCreate ------ -End"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3256
    return-void

    .line 3230
    :cond_d
    :try_start_1
    sget-object v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DEFAULTCHANNEL:Ljava/lang/String;

    const-string v1, "88.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3231
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ_PHILIPHINES:F

    sput v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 3233
    :cond_e
    const-string v0, "localpreference"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "initialfreq"

    sget v2, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 3236
    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_f

    .line 3237
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 3238
    :cond_f
    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 3240
    mul-float v1, v0, v7

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    .line 3242
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    iget-wide v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setFrequency(JZ)V

    .line 3243
    sget-boolean v1, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-nez v1, :cond_10

    .line 3244
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    iget-wide v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFrequency(J)V

    .line 3246
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting initial freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3249
    :catch_0
    move-exception v0

    .line 3250
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method private myOnResume()V
    .locals 6

    .prologue
    const/16 v3, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3259
    const-string v0, "  myOnResume -------------------"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3260
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->setPlayPauseImage()V

    .line 3261
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 3263
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/ChannelStore;->load()V

    .line 3264
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->resetFavLayout()V

    .line 3268
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3269
    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3279
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 3280
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 3281
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3284
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsLastPlay:Z

    .line 3290
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3291
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->resetRDS(F)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3297
    :cond_0
    :goto_1
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/FMNotificationManager;->removeNotification()V

    .line 3298
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsPlaybackMode:Z

    if-eqz v0, :cond_1

    .line 3300
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3301
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3302
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3312
    :cond_1
    :goto_2
    iput-boolean v4, p0, Lcom/sec/android/app/fm/MainActivity;->mIsPlaybackMode:Z

    .line 3315
    const-string v0, "SettingsPreference"

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "save_dialog"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3317
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mShowRecordSaveDialogOnResume:Z

    if-eqz v0, :cond_2

    .line 3318
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    .line 3319
    iput-boolean v4, p0, Lcom/sec/android/app/fm/MainActivity;->mShowRecordSaveDialogOnResume:Z

    .line 3323
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->sendFMBackGroundPlayingStatus()V

    .line 3353
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/fm/MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3355
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.notification.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3358
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.fm.listplayer.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3360
    invoke-direct {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->updateRecordButton(Z)V

    .line 3364
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->refreshVolumeIcon()V

    .line 3367
    sget-boolean v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v0, :cond_6

    .line 3368
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "localpreference"

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "rtplus"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3370
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3372
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3374
    if-eqz v0, :cond_3

    .line 3377
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3378
    iput-boolean v5, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z

    .line 3384
    :cond_3
    :goto_3
    const-string v0, ""

    .line 3388
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isSeeking()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0029

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    .line 3393
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqCover:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3394
    const-string v0, "  myOnResume ------------------- end"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3395
    return-void

    .line 3271
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V
    :try_end_4
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 3272
    :catch_0
    move-exception v0

    .line 3273
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto/16 :goto_0

    .line 3293
    :catch_1
    move-exception v0

    .line 3294
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 3304
    :catch_2
    move-exception v0

    .line 3306
    :try_start_5
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    .line 3307
    :catch_3
    move-exception v0

    goto/16 :goto_2

    .line 3382
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3

    .line 3390
    :catch_4
    move-exception v1

    .line 3391
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_4
.end method

.method private pauseFMRecording()V
    .locals 2

    .prologue
    .line 6379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[pauseFMRecording - Record Button mRecorder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6380
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_0

    .line 6381
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->pause()V

    .line 6382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    .line 6386
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6387
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 6389
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setPauseResumeBtnImage(Z)V

    .line 6390
    return-void
.end method

.method private refreshFavChannels(F)V
    .locals 10
    .parameter

    .prologue
    const/high16 v9, 0x4120

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 5905
    const-string v0, "refreshing Fav channels"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5908
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 5909
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 5910
    :goto_0
    if-ge v3, v4, :cond_5

    .line 5911
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/data/Channel;

    .line 5912
    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    if-eqz v1, :cond_1

    .line 5913
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5910
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 5919
    :cond_1
    iget v1, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    if-ltz v1, :cond_0

    .line 5921
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    iget v5, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    aget-object v1, v1, v5

    if-eqz v1, :cond_0

    .line 5924
    iget-boolean v1, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-ne v1, v8, :cond_4

    .line 5925
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFavFeq:[F

    iget v5, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    iget v6, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    aput v6, v1, v5

    .line 5927
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v1

    const/16 v5, 0x32

    if-ne v1, v5, :cond_2

    .line 5928
    const-string v1, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity;->mFavFeq:[F

    iget v7, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5935
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    iget v6, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    aget-object v5, v5, v6

    iget-object v6, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setStationFrequencyText(Ljava/lang/String;Ljava/lang/String;)V

    .line 5938
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    iget v5, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_3

    .line 5939
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    iget v5, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setFreqTextColorAsPlay()V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5946
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    iget v0, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    aget-object v0, v1, v0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setState(I)V

    goto :goto_1

    .line 5930
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFavFeq:[F

    iget v5, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    aget v1, v1, v5

    mul-float/2addr v1, v9

    float-to-long v5, v1

    .line 5931
    long-to-float v1, v5

    div-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 5941
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    iget v5, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setFreqTextColorAsNormal()V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 5943
    :catch_0
    move-exception v1

    .line 5944
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_3

    .line 5948
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    iget v0, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    aget-object v0, v1, v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setState(I)V

    goto/16 :goto_1

    .line 5956
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->setPlayPauseImage()V

    .line 5957
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->noFavoritechannel()Z

    move-result v0

    .line 5958
    if-ne v0, v8, :cond_7

    .line 5959
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    array-length v3, v1

    move v0, v2

    :goto_4
    if-ge v0, v3, :cond_7

    aget-object v4, v1, v0

    .line 5960
    if-eqz v4, :cond_6

    .line 5961
    invoke-virtual {v4, v2}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setState(I)V

    .line 5959
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5963
    :cond_7
    return-void
.end method

.method private refreshScanIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 7935
    const-string v0, "refresh Scan Icon"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 7936
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 7937
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7938
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020107

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 7939
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7946
    :cond_0
    :goto_0
    return-void

    .line 7941
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020106

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 7943
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private refreshVolumeIcon()V
    .locals 7

    .prologue
    const v6, 0x7f020030

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f00

    .line 7206
    const-string v0, "refreshVolumeIcon"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 7207
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-eqz v0, :cond_1

    .line 7208
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7210
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 7211
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-nez v0, :cond_4

    .line 7212
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 7213
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 7214
    if-nez v0, :cond_2

    .line 7215
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 7224
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 7225
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 7227
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7228
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->startBargeIn()V

    .line 7250
    :cond_1
    :goto_1
    return-void

    .line 7216
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_sound_off"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 7217
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 7218
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 7219
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V

    goto :goto_0

    .line 7221
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 7232
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 7233
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 7234
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V

    .line 7235
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->stopBargeIn()V

    goto :goto_1

    .line 7238
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 7239
    if-nez v0, :cond_6

    .line 7240
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 7244
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 7245
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 7246
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V

    .line 7247
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->stopBargeIn()V

    goto :goto_1

    .line 7242
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2
.end method

.method private registerBroadcastReceiverSDCard(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 7257
    if-eqz p1, :cond_1

    .line 7258
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 7259
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7260
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7261
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7262
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7263
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7264
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7265
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 7267
    new-instance v1, Lcom/sec/android/app/fm/MainActivity$39;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$39;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    .line 7299
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7306
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 7301
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 7302
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7303
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private registerBroadcastReceiverTurningOn(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 7311
    if-eqz p1, :cond_1

    .line 7312
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 7313
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "action_turning_on"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7315
    new-instance v1, Lcom/sec/android/app/fm/MainActivity$40;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$40;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverTurningOn:Landroid/content/BroadcastReceiver;

    .line 7321
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverTurningOn:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7328
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 7323
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverTurningOn:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 7324
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverTurningOn:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7325
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverTurningOn:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private registerBroadcastScreen(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 7617
    if-eqz p1, :cond_1

    .line 7618
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 7619
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7621
    new-instance v1, Lcom/sec/android/app/fm/MainActivity$43;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$43;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverScreen:Landroid/content/BroadcastReceiver;

    .line 7632
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverScreen:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7640
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 7635
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverScreen:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 7636
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverScreen:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7637
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverScreen:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private registerForContextMenu()V
    .locals 4

    .prologue
    .line 5978
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    .local v0, arr$:[Lcom/sec/android/app/fm/ui/FavoriteButton;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 5979
    .local v1, fav:Lcom/sec/android/app/fm/ui/FavoriteButton;
    if-eqz v1, :cond_0

    .line 5980
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 5978
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5982
    .end local v1           #fav:Lcom/sec/android/app/fm/ui/FavoriteButton;
    :cond_1
    return-void
.end method

.method private registerPalmReceiver()V
    .locals 2

    .prologue
    .line 7828
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPalmReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 7829
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$44;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$44;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPalmReceiver:Landroid/content/BroadcastReceiver;

    .line 7844
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPalmReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->createPalmFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7845
    return-void
.end method

.method private registerRestoreReceiver()V
    .locals 2

    .prologue
    .line 7333
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 7334
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.fm.RESTORE_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7336
    new-instance v1, Lcom/sec/android/app/fm/MainActivity$41;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$41;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 7346
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7347
    return-void
.end method

.method private releaseFMRecorder()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x64

    const/16 v9, 0xc9

    const/16 v8, 0xca

    const/4 v7, 0x0

    .line 6528
    const-string v2, "fmradio_recoding=off"

    .line 6529
    .local v2, keyvalue:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 6533
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v5, :cond_0

    .line 6534
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    .line 6535
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V

    .line 6536
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 6537
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6547
    :cond_0
    :goto_0
    const-string v5, "statusbar"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 6550
    .local v3, mStatusBar:Landroid/app/StatusBarManager;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6555
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 6559
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.fm.volume_unlock"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6560
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 6561
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6562
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 6564
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v5, v8, v10, v11}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 6565
    iput-boolean v7, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    .line 6566
    iput-boolean v7, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    .line 6567
    iput-boolean v7, p0, Lcom/sec/android/app/fm/MainActivity;->isWarningckMemFull:Z

    .line 6568
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 6571
    iput-boolean v7, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z

    .line 6574
    new-instance v4, Landroid/content/Intent;

    const-string v5, "action_refresh_fmradio_setting"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6575
    .local v4, settingsActivityIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 6578
    const-wide/16 v5, 0x64

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 6586
    :goto_2
    return-void

    .line 6540
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #mStatusBar:Landroid/app/StatusBarManager;
    .end local v4           #settingsActivityIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 6541
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "mRecorder : stop failed."

    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6579
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #mStatusBar:Landroid/app/StatusBarManager;
    .restart local v4       #settingsActivityIntent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 6580
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6581
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 6584
    :cond_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 6551
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #settingsActivityIntent:Landroid/content/Intent;
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method private removeChannel(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 5998
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5999
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 6000
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6001
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 6002
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity$Callback;->notifyUI()V

    .line 6001
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6006
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method private resetFavLayout()V
    .locals 5

    .prologue
    .line 6009
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    .local v0, arr$:[Lcom/sec/android/app/fm/ui/FavoriteButton;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 6010
    .local v1, fav:Lcom/sec/android/app/fm/ui/FavoriteButton;
    if-eqz v1, :cond_0

    .line 6011
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setState(I)V

    .line 6009
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6013
    .end local v1           #fav:Lcom/sec/android/app/fm/ui/FavoriteButton;
    :cond_1
    return-void
.end method

.method private resetRDS(F)V
    .locals 4
    .parameter "freq"

    .prologue
    .line 6017
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset RDS :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 6018
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v2}, Lcom/samsung/media/fmradio/FMPlayer;->isRDSEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 6019
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6027
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6029
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v2}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6030
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->setRadioStatusTextVisibility(I)V

    .line 6031
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6040
    :cond_0
    :goto_1
    return-void

    .line 6021
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 6022
    .local v0, channel:Lcom/sec/android/app/fm/data/Channel;
    if-eqz v0, :cond_2

    .line 6023
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6037
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    :catch_0
    move-exception v1

    .line 6038
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_1

    .line 6025
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private resumeFMRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[resumeFMRecording - Record Button mRecorder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6394
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_0

    .line 6395
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->resume()V

    .line 6396
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    .line 6400
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6402
    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 6403
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBlinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6404
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6406
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setPauseResumeBtnImage(Z)V

    .line 6407
    return-void
.end method

.method private saveCurrentFreq()V
    .locals 2

    .prologue
    .line 6044
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->saveCurrentFreq(Landroid/content/Context;F)V

    .line 6045
    return-void
.end method

.method public static saveCurrentFreq(Landroid/content/Context;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 6051
    if-nez p0, :cond_1

    .line 6052
    const-string v0, "FMApp"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6072
    :cond_0
    :goto_0
    return-void

    .line 6056
    :cond_1
    const-string v0, "localpreference"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6059
    if-nez v0, :cond_2

    .line 6060
    const-string v0, "FMapp"

    const-string v1, "sharedPref is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6064
    :cond_2
    const-string v1, "initialfreq"

    sget v2, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 6065
    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 6066
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6067
    const-string v1, "initialfreq"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 6068
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private sendFMBackGroundPlayingStatus()V
    .locals 5

    .prologue
    .line 3398
    const-string v2, "SettingsPreference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "backgroudplaying"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3401
    .local v1, isFMBackGroundPlaying:Z
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.backgroung.playing"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3402
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "isbackgroundplaying"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFMBackGroundPlayingStatus >> isFMBackGroundPlaying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3404
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3405
    return-void
.end method

.method public static setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 711
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    :goto_0
    return-void

    .line 713
    :cond_0
    const-string v0, "SettingsPreference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "af"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 715
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AF enable :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 716
    if-eqz v0, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->enableAF()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 722
    :catch_0
    move-exception v0

    .line 724
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 725
    :catch_1
    move-exception v0

    goto :goto_0

    .line 719
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->disableAF()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private static setOffAlarm(ILandroid/content/Context;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0a000d

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 733
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOffAlarm val:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 735
    if-ne p0, v4, :cond_1

    .line 736
    const/16 v0, 0xf

    .line 737
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    if-nez v2, :cond_0

    .line 738
    invoke-static {p1, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    .line 739
    :cond_0
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    new-array v3, v4, [Ljava/lang/Object;

    const v4, 0x7f0a0047

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 741
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 767
    :goto_0
    mul-int/lit8 v0, v0, 0x3c

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 770
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/fm/AlarmReceiver;

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 772
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 773
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 774
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {v0, v6, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 777
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set the alarm for :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 778
    return-void

    .line 743
    :cond_1
    if-ne p0, v6, :cond_3

    .line 744
    const/16 v0, 0x1e

    .line 745
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    if-nez v2, :cond_2

    .line 746
    invoke-static {p1, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    .line 747
    :cond_2
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    new-array v3, v4, [Ljava/lang/Object;

    const v4, 0x7f0a0048

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 749
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 751
    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    .line 752
    const/16 v0, 0x3c

    .line 753
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    if-nez v2, :cond_4

    .line 754
    invoke-static {p1, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    .line 755
    :cond_4
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    const v3, 0x7f0a000e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 756
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 758
    :cond_5
    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    .line 759
    const/16 v0, 0x78

    .line 760
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    if-nez v2, :cond_6

    .line 761
    invoke-static {p1, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    .line 762
    :cond_6
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    const v3, 0x7f0a000f

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0a004a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 764
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method private setPauseResumeBtnImage(Z)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0a0086

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6410
    if-eqz p1, :cond_0

    .line 6411
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6412
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f0a008b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6414
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    const v1, 0x7f0200dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6416
    const v0, 0x7f040006

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 6417
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecTime:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6426
    :goto_0
    return-void

    .line 6419
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6420
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f0a008c

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6422
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6424
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecTime:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    goto :goto_0
.end method

.method private setPlayPauseImage()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 6099
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6102
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6103
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPowerView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6104
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_1

    .line 6105
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->updateDialPointState(Z)V

    .line 6113
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_0

    .line 6114
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->showPoint()V

    .line 6221
    :cond_0
    :goto_1
    return-void

    .line 6107
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6218
    :catch_0
    move-exception v0

    .line 6219
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_1

    .line 6125
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6126
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPowerView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6128
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-nez v0, :cond_3

    .line 6129
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6130
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFreqVisibility()V

    .line 6133
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_9

    .line 6134
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->updateDialPointState(Z)V

    .line 6135
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDisplayPower:I

    if-ne v0, v2, :cond_a

    .line 6136
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 6137
    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6138
    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 6139
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 6140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 6142
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 6143
    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6144
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 6145
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 6147
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 6148
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->clearAnimation()V

    .line 6150
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setVisibility(I)V

    .line 6151
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6152
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 6153
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 6155
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6156
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6157
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 6158
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 6160
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6161
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6163
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 6165
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 6166
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 6169
    :cond_7
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$35;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$35;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6185
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6203
    :cond_8
    :goto_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDisplayPower:I

    .line 6208
    :cond_9
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_0

    .line 6209
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6210
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->showPoint()V

    goto/16 :goto_1

    .line 6189
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 6190
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->clearAnimation()V

    .line 6192
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 6193
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 6195
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 6196
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 6199
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setVisibility(I)V

    .line 6200
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6201
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 786
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    const-string v0, "SettingsPreference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "stationid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 791
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RDS enable :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 792
    if-eqz v0, :cond_2

    .line 793
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isRDSEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->enableRDS()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 803
    :catch_0
    move-exception v0

    .line 805
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 806
    :catch_1
    move-exception v0

    goto :goto_0

    .line 799
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->disableRDS()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private setRadioStatusTextVisibility(I)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 7357
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7358
    if-nez p1, :cond_0

    .line 7359
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 7363
    :goto_0
    return-void

    .line 7361
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method public static setSoundSettings(Lcom/samsung/media/fmradio/FMPlayer;Landroid/media/AudioManager;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7573
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 7574
    :cond_0
    const-string v0, "FMApp"

    const-string v1, "audioManager or mPlayer is null."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 7610
    :goto_0
    return-void

    .line 7578
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7582
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mono_audio_db"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 7584
    if-nez v0, :cond_2

    .line 7586
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->setStereo()V

    .line 7587
    const-string v0, "FMApp"

    const-string v1, "setStereo() is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7588
    :catch_0
    move-exception v0

    .line 7590
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_0

    .line 7594
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->setMono()V

    .line 7595
    const-string v0, "FMApp"

    const-string v1, "setMono() is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 7596
    :catch_1
    move-exception v0

    .line 7598
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_0

    .line 7603
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->setMono()V

    .line 7604
    const-string v0, "FMApp"

    const-string v1, "setMono() is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 7605
    :catch_2
    move-exception v0

    .line 7607
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setUpdateRTWithRTP(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1273
    sput-boolean p0, Lcom/sec/android/app/fm/MainActivity;->updateRTWithRTP:Z

    .line 1274
    return-void
.end method

.method private setVolume(I)V
    .locals 3
    .parameter

    .prologue
    .line 6224
    const-string v0, "RNR"

    const-string v1, " setVolume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6226
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeChangedFromRadio:Z

    .line 6237
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6269
    :cond_0
    :goto_0
    return-void

    .line 6266
    :catch_0
    move-exception v0

    .line 6267
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private showBargeInNotification()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 7663
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voicetalk_language"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7665
    const/4 v2, 0x0

    .line 7667
    const-string v1, ""

    .line 7668
    const-string v0, ""

    .line 7670
    if-eqz v3, :cond_0

    .line 7671
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 7673
    if-lez v4, :cond_0

    .line 7675
    const/16 v5, 0x2d

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 7676
    if-lez v5, :cond_0

    .line 7677
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 7678
    add-int/lit8 v6, v5, 0x1

    if-ge v6, v4, :cond_0

    .line 7679
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 7687
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 7688
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 7689
    if-eqz v4, :cond_3

    .line 7690
    iget-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 7691
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 7692
    :cond_1
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7693
    iput-object v2, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 7694
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 7696
    const v0, 0x7f060002

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 7698
    iput-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 7699
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 7703
    :goto_1
    if-nez v0, :cond_2

    .line 7704
    const v0, 0x7f060002

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 7707
    :cond_2
    const v1, 0x7f0a00c7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, v0, v7

    aput-object v3, v2, v7

    aget-object v3, v0, v8

    aput-object v3, v2, v8

    aget-object v3, v0, v9

    aput-object v3, v2, v9

    aget-object v3, v0, v10

    aput-object v3, v2, v10

    aget-object v3, v0, v11

    aput-object v3, v2, v11

    const/4 v3, 0x5

    const/4 v4, 0x5

    aget-object v0, v0, v4

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7712
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 7713
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f0200df

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 7715
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 7717
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 7719
    const-string v4, "android.intent.action.VOICE_SETTING_BARGEIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7721
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v4, v8, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 7722
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const v5, 0x7f0a0018

    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 7724
    const v1, 0x15e79

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 7726
    iput-boolean v8, p0, Lcom/sec/android/app/fm/MainActivity;->mIsBargeInNotification:Z

    .line 7728
    return-void

    .line 7682
    :catch_0
    move-exception v3

    goto/16 :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method private showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 6272
    const-string v0, "RNR"

    const-string v1, " showBubble"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6273
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 6274
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    add-int/lit8 v0, v0, -0x2f

    .line 6277
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    .line 6279
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    .line 6281
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2, p2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 6283
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 6285
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsBubbleRunable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6286
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHideBubble:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6288
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHideBubble:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsBubbleRunable:Z

    .line 6289
    return-void
.end method

.method private showCustomOptionMenu(Landroid/view/View;)V
    .locals 2
    .parameter "anchor"

    .prologue
    .line 7164
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 7165
    .local v0, pm:Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 7166
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 7167
    new-instance v1, Lcom/sec/android/app/fm/MainActivity$37;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$37;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 7183
    new-instance v1, Lcom/sec/android/app/fm/MainActivity$38;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$38;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 7192
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 7193
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->setIsShowCustomOptionMenu(Z)V

    .line 7194
    return-void
.end method

.method private showNormalSoftkeys()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 6292
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnAllChannel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 6293
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnScan:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 6294
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnDone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 6295
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnCanncel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 6296
    return-void
.end method

.method private showRecoder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6299
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFavScrollView:Lcom/sec/android/app/fm/ui/FavoriteScrollView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->setVisibility(I)V

    .line 6300
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6301
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 6302
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setPauseResumeBtnImage(Z)V

    .line 6303
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    if-eqz v0, :cond_0

    .line 6305
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6306
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 6316
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->refreshVolumeIcon()V

    .line 6318
    return-void

    .line 6309
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6311
    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 6312
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBlinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6313
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startAllChannelActivity()V
    .locals 2

    .prologue
    .line 6353
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 6354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 6355
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 6357
    :cond_0
    return-void
.end method

.method private stopFMRecording()V
    .locals 5

    .prologue
    const v4, 0x7f0a00af

    const/4 v3, 0x0

    .line 6429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[stopFMRecording - Record Button mRecorder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6431
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-nez v0, :cond_1

    .line 6502
    :cond_0
    :goto_0
    return-void

    .line 6434
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->releaseFMRecorder()V

    .line 6437
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->setPauseResumeBtnImage(Z)V

    .line 6441
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->updateMediaStore()Z

    move-result v1

    .line 6445
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setRecordMode(I)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6451
    :goto_1
    if-eqz v1, :cond_0

    .line 6459
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 6460
    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    .line 6465
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6467
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 6474
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6446
    :catch_0
    move-exception v0

    .line 6447
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_1

    .line 6462
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 6463
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2
.end method

.method private stopSpeaking()V
    .locals 2

    .prologue
    .line 6590
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6592
    invoke-static {}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 6593
    const-string v1, "stop speaking.."

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6603
    :cond_0
    :goto_0
    return-void

    .line 6596
    :catch_0
    move-exception v0

    .line 6598
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6599
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private toggleParentLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "oldParent"
    .parameter "newParent"

    .prologue
    .line 6612
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 6614
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6615
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6621
    :cond_0
    :goto_0
    return-void

    .line 6617
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private unregisterForContextMenu()V
    .locals 4

    .prologue
    .line 6674
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    .local v0, arr$:[Lcom/sec/android/app/fm/ui/FavoriteButton;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 6675
    .local v1, fav:Lcom/sec/android/app/fm/ui/FavoriteButton;
    if-eqz v1, :cond_0

    .line 6676
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 6674
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6678
    .end local v1           #fav:Lcom/sec/android/app/fm/ui/FavoriteButton;
    :cond_1
    return-void
.end method

.method private unregisterPalmReceiver()V
    .locals 1

    .prologue
    .line 7848
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPalmReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 7849
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPalmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPalmReceiver:Landroid/content/BroadcastReceiver;

    .line 7852
    :cond_0
    return-void
.end method

.method private unregisterRestoreReceiver()V
    .locals 1

    .prologue
    .line 7350
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 7351
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 7354
    :cond_0
    return-void
.end method

.method private updateRecordButton(Z)V
    .locals 3
    .parameter

    .prologue
    .line 7474
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7475
    if-eqz p1, :cond_0

    .line 7476
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f00

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 7477
    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 7478
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 7479
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 7480
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 7481
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7501
    :goto_0
    return-void

    .line 7483
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7498
    :catch_0
    move-exception v0

    .line 7499
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_0

    .line 7487
    :cond_1
    if-eqz p1, :cond_2

    .line 7488
    :try_start_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f00

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 7489
    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 7490
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 7491
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 7492
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 7493
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 7495
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateRecordedTime()V
    .locals 6

    .prologue
    .line 5748
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeconds:I

    div-int/lit16 v0, v0, 0xe10

    .line 5749
    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeconds:I

    rem-int/lit16 v1, v1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 5750
    iget v2, p0, Lcom/sec/android/app/fm/MainActivity;->mSeconds:I

    rem-int/lit8 v2, v2, 0x3c

    .line 5752
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 5753
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mRecHour1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mRecHour2:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->updateTime([CLandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 5755
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 5756
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mRecMin1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mRecMin2:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->updateTime([CLandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 5758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 5759
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mRecSec1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mRecSec2:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->updateTime([CLandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 5761
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getAvailableStorage(Z)Z

    .line 5762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateRecordedTime seconds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minutes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hours = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " current time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5764
    return-void
.end method

.method private updateRecordingPanelUI()V
    .locals 3

    .prologue
    .line 5898
    const-string v0, "0"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 5899
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecMin1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mRecMin2:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->updateTime([CLandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 5900
    const-string v0, "0"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 5901
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecHour1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mRecHour2:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->updateTime([CLandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 5902
    return-void
.end method

.method private updateTime([CLandroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "charArray"
    .parameter "imgView1"
    .parameter "imgView2"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5851
    array-length v0, p1

    if-ne v0, v2, :cond_0

    .line 5852
    invoke-direct {p0, v1, p2}, Lcom/sec/android/app/fm/MainActivity;->updateTimeResource(ILandroid/widget/ImageView;)V

    .line 5853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/sec/android/app/fm/MainActivity;->updateTimeResource(ILandroid/widget/ImageView;)V

    .line 5858
    :goto_0
    return-void

    .line 5855
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/fm/MainActivity;->updateTimeResource(ILandroid/widget/ImageView;)V

    .line 5856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/sec/android/app/fm/MainActivity;->updateTimeResource(ILandroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private updateTimeResource(ILandroid/widget/ImageView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5861
    packed-switch p1, :pswitch_data_0

    .line 5895
    :goto_0
    return-void

    .line 5863
    :pswitch_0
    const v0, 0x7f020070

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5866
    :pswitch_1
    const v0, 0x7f020071

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5869
    :pswitch_2
    const v0, 0x7f020072

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5872
    :pswitch_3
    const v0, 0x7f020073

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5875
    :pswitch_4
    const v0, 0x7f020074

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5878
    :pswitch_5
    const v0, 0x7f020075

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5881
    :pswitch_6
    const v0, 0x7f020076

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5884
    :pswitch_7
    const v0, 0x7f020077

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5887
    :pswitch_8
    const v0, 0x7f020078

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5890
    :pswitch_9
    const v0, 0x7f020079

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5861
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private widgetRefresh()V
    .locals 1

    .prologue
    .line 3456
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->widgetRefresh(Landroid/content/Context;)V

    .line 3457
    return-void
.end method

.method public static widgetRefresh(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 3460
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.fm.widget.refresh"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3461
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3462
    return-void
.end method


# virtual methods
.method public GetFactoryRssi()I
    .locals 3

    .prologue
    .line 7895
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "SettingsPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "factoryrssi"

    const/16 v2, -0x46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetFactoryRssi :: rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 7899
    return v0
.end method

.method public SetFactoryRssi(I)V
    .locals 2
    .parameter

    .prologue
    .line 7903
    const-string v0, "SettingsPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7906
    const-string v1, "factoryrssi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7907
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetFactoryRssi :: rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 7909
    return-void
.end method

.method public checkBGPlayingSetting()V
    .locals 10

    .prologue
    .line 2423
    const/4 v5, 0x0

    .line 2424
    .local v5, runningTask:Ljava/lang/String;
    :try_start_0
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2425
    .local v0, activityManager:Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 2426
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 2427
    .local v4, rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_0

    .line 2428
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2429
    .local v3, info:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2430
    .local v1, componentName:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 2431
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2436
    .end local v1           #componentName:Landroid/content/ComponentName;
    .end local v3           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4           #rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    iget-boolean v6, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    const-string v6, "SettingsPreference"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "backgroudplaying"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2441
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v6}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z

    .line 2442
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/fm/FMNotificationManager;->removeNotification()V

    .line 2444
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/sec/android/app/fm/MediaButtonReceiver;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 2460
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    :cond_2
    :goto_0
    return-void

    .line 2447
    .restart local v0       #activityManager:Landroid/app/ActivityManager;
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v6}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/sec/android/app/fm/MainActivity;->mIsLastPlay:Z

    if-nez v6, :cond_2

    .line 2448
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/sec/android/app/fm/MediaButtonReceiver;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2453
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    :catch_0
    move-exception v2

    .line 2455
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2456
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method clearNonFavChannel()V
    .locals 3

    .prologue
    .line 2502
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2503
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 2505
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/data/Channel;

    iget-boolean v1, v1, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-nez v1, :cond_0

    .line 2506
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->removeChannel(I)V

    .line 2503
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2509
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2510
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 2511
    return-void

    .line 2509
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 5369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " dispatchTouchEvent onTouchEvent_ex action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 5372
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public error(Ljava/lang/Exception;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2519
    instance-of v0, p1, Lcom/samsung/media/fmradio/FMPlayerException;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayerException;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 2520
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 2521
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    .line 2522
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0018

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0062

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2524
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2573
    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z

    .line 2575
    return-void

    .line 2525
    :cond_1
    instance-of v0, p1, Lcom/samsung/media/fmradio/FMPlayerException;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayerException;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2527
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 2528
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    .line 2529
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    const v1, 0x7f0a003e

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 2530
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2531
    :cond_3
    instance-of v0, p1, Lcom/samsung/media/fmradio/FMPlayerException;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayerException;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 2533
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastAirplane:Landroid/widget/Toast;

    if-nez v0, :cond_4

    .line 2534
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastAirplane:Landroid/widget/Toast;

    .line 2535
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastAirplane:Landroid/widget/Toast;

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 2536
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastAirplane:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2538
    :cond_5
    instance-of v0, p1, Lcom/samsung/media/fmradio/FMPlayerException;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayerException;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 2539
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastBatteryLow:Landroid/widget/Toast;

    if-nez v0, :cond_6

    .line 2540
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastBatteryLow:Landroid/widget/Toast;

    .line 2541
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastBatteryLow:Landroid/widget/Toast;

    const v1, 0x7f0a005d

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 2542
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastBatteryLow:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2545
    :cond_7
    instance-of v0, p1, Lcom/samsung/media/fmradio/FMPlayerException;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayerException;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 2547
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_8

    .line 2548
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    .line 2549
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 2550
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2555
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getByte(J)J
    .locals 5
    .parameter

    .prologue
    .line 7912
    const v0, 0x42f46666

    .line 7915
    const-wide/16 v1, 0x400

    div-long v1, p1, v1

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    long-to-float v1, v1

    div-float v0, v1, v0

    float-to-long v0, v0

    .line 7916
    return-wide v0
.end method

.method public getChannel(F)Lcom/sec/android/app/fm/data/Channel;
    .locals 3
    .parameter "freqMHz"

    .prologue
    .line 2585
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2586
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2587
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2588
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    iget v2, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    .line 2589
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    .line 2593
    .end local v0           #i:I
    .end local v1           #size:I
    :goto_1
    return-object v2

    .line 2587
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2593
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getCurrentChannel()F
    .locals 5

    .prologue
    const/high16 v2, -0x4080

    .line 2604
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2605
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    long-to-float v1, v3

    .line 2606
    .local v1, freq:F
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    .line 2617
    .end local v1           #freq:F
    :cond_0
    :goto_0
    return v2

    .line 2608
    .restart local v1       #freq:F
    :cond_1
    const/high16 v2, 0x447a

    div-float v2, v1, v2

    goto :goto_0

    .line 2610
    .end local v1           #freq:F
    :catch_0
    move-exception v0

    .line 2612
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2613
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getFavChannel(F)Lcom/sec/android/app/fm/data/Channel;
    .locals 3
    .parameter "freqMHz"

    .prologue
    .line 2672
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2673
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2674
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    iget v2, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    iget-boolean v2, v2, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-eqz v2, :cond_0

    .line 2675
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    .line 2678
    :goto_1
    return-object v2

    .line 2673
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2678
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getFavChannelOnindex(I)Lcom/sec/android/app/fm/data/Channel;
    .locals 3
    .parameter "index"

    .prologue
    .line 2682
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2683
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2684
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    iget v2, v2, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    iget-boolean v2, v2, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-eqz v2, :cond_0

    .line 2685
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    .line 2688
    :goto_1
    return-object v2

    .line 2683
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2688
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getIsShowCustomOptionMenu()Z
    .locals 1

    .prologue
    .line 7201
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsShowCustomOptionMenu:Z

    return v0
.end method

.method public hideVolumeBar()V
    .locals 6

    .prologue
    .line 2889
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    if-eqz v2, :cond_0

    .line 2890
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 2891
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2892
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2893
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 2898
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2899
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2900
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    if-eqz v2, :cond_1

    .line 2901
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    new-instance v3, Lcom/sec/android/app/fm/MainActivity$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/MainActivity$10;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2921
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_1
    :goto_0
    return-void

    .line 2914
    :catch_0
    move-exception v1

    .line 2916
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2917
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 2939
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 2940
    return-void
.end method

.method public log(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2943
    if-nez p2, :cond_0

    .line 2944
    const-string v0, "FMApp"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    :cond_0
    return-void
.end method

.method noFavoritechannel()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 3408
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 3409
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3410
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3411
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/data/Channel;

    .line 3412
    .local v0, channel:Lcom/sec/android/app/fm/data/Channel;
    iget-boolean v4, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-ne v4, v3, :cond_1

    .line 3413
    const/4 v3, 0x0

    .line 3416
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_0
    return v3

    .line 3410
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    .restart local v1       #i:I
    .restart local v2       #size:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method notifyToStatusBar()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 3420
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player.status.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3422
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3423
    const-string v0, "sending ON broadcast when we put the notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3424
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v1

    .line 3425
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v2

    .line 3426
    const-string v0, ""

    .line 3427
    if-eqz v2, :cond_0

    .line 3428
    iget-object v0, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 3429
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 3431
    const/high16 v2, -0x4080

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_5

    .line 3432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3433
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3434
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3435
    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3437
    :cond_1
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3438
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3439
    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3441
    :cond_2
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v0

    const/16 v3, 0x32

    if-ne v0, v3, :cond_4

    .line 3442
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.2f"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3446
    :goto_0
    const-string v0, " MHz"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3447
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;Z)V

    .line 3453
    :cond_3
    :goto_1
    return-void

    .line 3444
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3450
    :cond_5
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public on()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 3471
    :try_start_0
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->isUsedVoice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3472
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3507
    :goto_0
    return-void

    .line 3475
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->on()Z

    move-result v0

    .line 3477
    if-nez v0, :cond_1

    .line 3478
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3479
    new-instance v0, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v1, -0x1

    const/high16 v2, 0x7f0a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3501
    :catch_0
    move-exception v0

    .line 3502
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3503
    iput-boolean v5, p0, Lcom/sec/android/app/fm/MainActivity;->mDuringFirstAceess:Z

    .line 3504
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    .line 3505
    throw v0

    .line 3483
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->setSoundSettings(Lcom/samsung/media/fmradio/FMPlayer;Landroid/media/AudioManager;Landroid/content/Context;)V

    .line 3492
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 3493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got the volume from audiomanager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3494
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3496
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 3497
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-static {v0, p0}, Lcom/sec/android/app/fm/MainActivity;->checkSettingAlarm(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 3498
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 3499
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0a0009

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, -0x4080

    .line 3517
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3519
    if-ne p1, v5, :cond_4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 3520
    const-string v0, "com.samsung.app.fm.radio.freq.renamed"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3522
    const-string v1, "com.samsung.app.fm.radio.freq"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 3524
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 3526
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v1

    .line 3527
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 3529
    iput-object v0, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 3532
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v0

    iget v2, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 3533
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3534
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3536
    :cond_0
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 3537
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V

    .line 3550
    :cond_1
    :goto_0
    return-void

    .line 3539
    :cond_2
    invoke-static {p0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3543
    :cond_3
    invoke-static {p0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3546
    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 3548
    invoke-static {}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->activityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAndTune(FLandroid/view/View;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3561
    const/high16 v0, 0x42ae

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 3562
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->unlock()V

    .line 3585
    :goto_0
    return-void

    .line 3567
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3568
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->on()V

    .line 3571
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    .line 3572
    iput p1, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 3574
    const/high16 v0, 0x42c8

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3582
    :catch_0
    move-exception v0

    .line 3583
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 5291
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 5292
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    .line 5296
    :goto_0
    return-void

    .line 5294
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3597
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration changed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3599
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/sec/android/app/fm/MainActivity;->mOrientation:I

    .line 3600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration changed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3602
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->saveCurrentFreq()V

    .line 3604
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 3606
    if-eqz v1, :cond_8

    .line 3607
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 3612
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 3613
    const/4 v0, 0x1

    .line 3617
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->myOnCreate()V

    .line 3620
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3621
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->showSeekingText()V

    .line 3625
    :cond_1
    if-eqz v1, :cond_6

    .line 3626
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3630
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->myOnResume()V

    .line 3631
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3632
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 3633
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3634
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3636
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configuration  mRecorder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsRecording = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3637
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_3

    .line 3638
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->showRecoder()V

    .line 3639
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->updateRecordingPanelUI()V

    .line 3640
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->updateRecordedTime()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3650
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getIsShowCustomOptionMenu()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3651
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 3652
    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->showCustomOptionMenu(Landroid/view/View;)V

    .line 3655
    :cond_4
    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3656
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 3660
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/WorkerThread;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3661
    :cond_5
    const-string v0, "WorkerThread died, new WorkerThread created"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3662
    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    .line 3667
    :goto_3
    return-void

    .line 3628
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 3642
    :catch_0
    move-exception v0

    .line 3644
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3645
    :catch_1
    move-exception v0

    goto :goto_2

    .line 3664
    :cond_7
    const-string v0, "WorkerThread alive"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move v1, v0

    goto/16 :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 3676
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 3777
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_1
    return v4

    .line 3680
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v4, v4, v7

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 3682
    .local v0, channel:Lcom/sec/android/app/fm/data/Channel;
    if-nez v0, :cond_1

    move v4, v5

    .line 3683
    goto :goto_1

    .line 3685
    :cond_1
    const/4 v2, -0x1

    .line 3688
    .local v2, pos:I
    iget v2, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 3689
    iput-boolean v7, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 3690
    iput v8, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 3691
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 3693
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    .line 3694
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setState(I)V

    .line 3697
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->widgetRefresh()V

    goto :goto_0

    .line 3720
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v2           #pos:I
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v4, v4, v7

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 3721
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    if-nez v0, :cond_3

    move v4, v5

    .line 3722
    goto :goto_1

    .line 3723
    :cond_3
    iget v4, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v1

    .line 3724
    .local v1, newChannel:Lcom/sec/android/app/fm/data/Channel;
    if-nez v1, :cond_4

    .line 3725
    new-instance v1, Lcom/sec/android/app/fm/data/Channel;

    .end local v1           #newChannel:Lcom/sec/android/app/fm/data/Channel;
    iget v4, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    invoke-direct {v1, v4}, Lcom/sec/android/app/fm/data/Channel;-><init>(F)V

    .line 3726
    .restart local v1       #newChannel:Lcom/sec/android/app/fm/data/Channel;
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->addChannel(Lcom/sec/android/app/fm/data/Channel;)V

    .line 3729
    :cond_4
    iget v4, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    iput v4, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    .line 3731
    const-string v4, ""

    iput-object v4, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 3732
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3733
    .local v3, str:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3734
    iput-object v3, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 3735
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    const/4 v6, 0x3

    aget-object v4, v4, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 3736
    iput-boolean v5, v1, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 3738
    iput-boolean v7, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 3739
    iput v8, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 3741
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 3743
    iget v4, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    invoke-direct {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V

    .line 3745
    iget v4, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v6

    cmpl-float v4, v4, v6

    if-nez v4, :cond_0

    .line 3746
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3747
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    .line 3753
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v1           #newChannel:Lcom/sec/android/app/fm/data/Channel;
    .end local v3           #str:Ljava/lang/String;
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v4, v4, v7

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 3755
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    if-nez v0, :cond_6

    move v4, v5

    .line 3756
    goto/16 :goto_1

    .line 3759
    :cond_6
    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    .line 3767
    iput-boolean v5, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 3769
    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 3676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3804
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3805
    const-string v0, "oncreate -------------------"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3806
    sput-object p0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    .line 3808
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->mDuringFirstAceess:Z

    .line 3809
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->isBiggerThanMDPI()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    .line 3811
    const-string v0, "FMPlayer"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 3813
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mOrientation:I

    .line 3816
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_0

    .line 3817
    const-string v0, "FMRadio Service Is NULL. Exit FMRadio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3818
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->finish()V

    .line 3890
    :goto_0
    return-void

    .line 3822
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsPlaybackMode:Z

    .line 3823
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 3825
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3826
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test.mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3827
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "going into test mode"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3828
    invoke-static {}, Lcom/sec/android/app/fm/TestMode;->getInstance()Lcom/sec/android/app/fm/TestMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/TestMode;->handleIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 3832
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FMRadio getAction is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3835
    if-eqz p1, :cond_2

    .line 3836
    const-string v0, "onCreate savedinstancestate"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3837
    const-string v0, "selected_freq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSavedSelectedFreq:F

    .line 3840
    :cond_2
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$MyHandler;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    .line 3844
    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->requestWindowFeature(I)Z

    .line 3846
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->myOnCreate()V

    .line 3848
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeRec:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3849
    const-string v0, "setting the listner"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3851
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3858
    :goto_1
    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    .line 3864
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.volume_unlock"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3865
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3868
    invoke-direct {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->registerBroadcastReceiverSDCard(Z)V

    .line 3869
    invoke-direct {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->registerBroadcastReceiverTurningOn(Z)V

    .line 3870
    invoke-direct {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->registerBroadcastScreen(Z)V

    .line 3871
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 3872
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 3873
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->InitBargeInRecognizer(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;)V

    .line 3875
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->registerRestoreReceiver()V

    .line 3878
    const-string v0, "SettingsPreference"

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "motion"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3880
    if-nez v0, :cond_3

    .line 3881
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 3852
    :catch_0
    move-exception v0

    .line 3853
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_1

    .line 3885
    :cond_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3886
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3887
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    const/high16 v2, 0x42c8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3918
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getFavBtnIndex(I)I

    move-result v0

    .line 3919
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getFavChannelOnindex(I)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 3921
    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-ne v0, v4, :cond_2

    .line 3922
    const v0, 0x7f0a00a6

    invoke-interface {p1, v5, v4, v4, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3925
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getFavChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3926
    const v0, 0x7f0a0028

    invoke-interface {p1, v5, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3927
    :cond_0
    const v0, 0x7f0a0025

    invoke-interface {p1, v5, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3929
    invoke-direct {p0, p2}, Lcom/sec/android/app/fm/MainActivity;->getFavFreq(Landroid/view/View;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    .line 3930
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-long v0, v0

    .line 3932
    long-to-int v0, v0

    .line 3933
    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 3935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freq :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 3936
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_1

    .line 3937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0044

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.2f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 3942
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 3946
    :goto_1
    return-void

    .line 3940
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0044

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 3944
    :cond_2
    invoke-interface {p1}, Landroid/view/ContextMenu;->close()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const v8, 0x7f0a0021

    const v7, 0x7f0a0020

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3978
    packed-switch p1, :pswitch_data_0

    .line 4596
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 3981
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsActive:Z

    if-eqz v0, :cond_1

    .line 4008
    new-instance v0, Lcom/sec/android/app/fm/ui/FMAlertDialog;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 4009
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setTitle(I)V

    .line 4010
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const v1, 0x7f0a000c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4011
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const/4 v1, -0x2

    invoke-virtual {p0, v8}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/fm/MainActivity$15;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/MainActivity$15;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4022
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$16;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 4033
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    goto :goto_0

    .line 4048
    :pswitch_2
    new-instance v0, Lcom/sec/android/app/fm/ui/FMAlertDialog;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 4049
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const v1, 0x7f0a0041

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setTitle(I)V

    .line 4050
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const v1, 0x7f0a0015

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4051
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/fm/MainActivity$17;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/MainActivity$17;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4060
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    goto :goto_0

    .line 4064
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0043

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0010

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelAlreadyAddedDialog:Landroid/app/AlertDialog;

    .line 4069
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelAlreadyAddedDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 4101
    :pswitch_4
    new-instance v0, Lcom/sec/android/app/fm/ui/FMAlertDialog;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanSelectDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 4102
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanSelectDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setTitle(I)V

    .line 4103
    new-instance v0, Landroid/widget/ListView;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 4104
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f03001e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    const v4, 0x7f0a0045

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0046

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 4109
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4110
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mScanSelectDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setView(Landroid/view/View;)V

    .line 4111
    new-instance v1, Lcom/sec/android/app/fm/MainActivity$18;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$18;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4143
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanSelectDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    goto/16 :goto_0

    .line 4146
    :pswitch_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0043

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0053

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/fm/MainActivity$19;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/MainActivity$19;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTTSConfirmDialog:Landroid/app/AlertDialog;

    .line 4165
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTTSConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 4169
    :pswitch_6
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4170
    const v0, 0x7f070006

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqEdit:Landroid/widget/EditText;

    .line 4173
    new-array v0, v6, [Landroid/text/InputFilter;

    .line 4174
    new-instance v2, Lcom/sec/android/app/fm/MainActivity$20;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/MainActivity$20;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    aput-object v2, v0, v5

    .line 4214
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 4297
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$21;

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/fm/MainActivity$21;-><init>(Lcom/sec/android/app/fm/MainActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 4313
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqEdit:Landroid/widget/EditText;

    new-instance v2, Lcom/sec/android/app/fm/MainActivity$22;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/MainActivity$22;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 4325
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const v2, 0x7f0a006d

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setTitle(I)V

    .line 4326
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setView(Landroid/view/View;)V

    .line 4329
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$23;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$23;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 4341
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/fm/MainActivity$24;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/MainActivity$24;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4366
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const/4 v1, -0x2

    invoke-virtual {p0, v8}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/fm/MainActivity$25;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/MainActivity$25;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4373
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$26;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$26;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 4379
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$27;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$27;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4386
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    goto/16 :goto_0

    .line 4392
    :pswitch_7
    const-string v0, "SettingsPreference"

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "save_dialog"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 4448
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a006f

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Sounds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$29;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$29;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$28;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$28;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordSaveDialog:Landroid/app/AlertDialog;

    .line 4476
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordSaveDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 4481
    :pswitch_8
    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v1, :cond_0

    .line 4506
    new-instance v0, Lcom/sec/android/app/fm/ui/FMAlertDialog;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 4507
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setTitle(I)V

    .line 4508
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const v1, 0x7f0a00c8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4509
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/fm/MainActivity$30;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/MainActivity$30;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4516
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const/4 v1, -0x2

    invoke-virtual {p0, v8}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/fm/MainActivity$31;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/MainActivity$31;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4523
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    goto/16 :goto_0

    .line 4528
    :pswitch_9
    new-instance v0, Lcom/sec/android/app/fm/ui/RenameDialog;

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$32;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$32;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-direct {v0, p0, v5, v1}, Lcom/sec/android/app/fm/ui/RenameDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    .line 4561
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$33;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$33;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4569
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    goto/16 :goto_0

    .line 4575
    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionDialog:Lcom/sec/android/app/fm/ui/MotionDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionDialog:Lcom/sec/android/app/fm/ui/MotionDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/MotionDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4579
    :cond_2
    new-instance v0, Lcom/sec/android/app/fm/ui/MotionDialog;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/ui/MotionDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionDialog:Lcom/sec/android/app/fm/ui/MotionDialog;

    .line 4581
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionDialog:Lcom/sec/android/app/fm/ui/MotionDialog;

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$34;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$34;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/MotionDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4592
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionDialog:Lcom/sec/android/app/fm/ui/MotionDialog;

    goto/16 :goto_0

    .line 3978
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 4660
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 4661
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity;->mMenu:Landroid/view/Menu;

    .line 4662
    const/4 v0, 0x1

    return v0
.end method

.method public onDegreeChanged(JI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 4684
    long-to-float v0, p1

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 4685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ onDegreeChanged  mCurrentFreq = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 4686
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    sget v1, Lcom/sec/android/app/fm/MainActivity;->MAXFREQ:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 4687
    sget v0, Lcom/sec/android/app/fm/MainActivity;->MAXFREQ:F

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 4691
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_1

    .line 4692
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqBgView:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->setFrequency(JZ)V

    .line 4694
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialerChannelChangeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelSelectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4696
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialerChannelChangeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelSelectRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4699
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_3

    .line 4700
    long-to-float v0, p1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 4706
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onDegreeChanged mCurrentFreq : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 4707
    return-void

    .line 4688
    :cond_2
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 4689
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    goto :goto_0

    .line 4702
    :cond_3
    const-wide/16 v0, 0xa

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 4703
    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4716
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 4717
    const-string v1, "onDestroy -----------"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 4719
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    if-eqz v1, :cond_0

    .line 4720
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 4722
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4723
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->cancelScan()Z

    .line 4725
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->saveCurrentFreq()V

    .line 4726
    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v1, :cond_2

    .line 4727
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->stopFMRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4730
    :cond_2
    :try_start_1
    const-string v1, "we are removing the listner"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 4731
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->removeListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4735
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->destroy()V

    .line 4736
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/data/ChannelStore;->terminate()V

    .line 4737
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    if-eqz v1, :cond_3

    .line 4738
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/WorkerThread;->terminate()V

    .line 4739
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->stopSpeaking()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 4742
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 4747
    :goto_1
    :try_start_4
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->unregisterForContextMenu()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 4759
    :goto_2
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->registerBroadcastReceiverSDCard(Z)V

    .line 4760
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->registerBroadcastReceiverTurningOn(Z)V

    .line 4761
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->registerBroadcastScreen(Z)V

    .line 4762
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->unregisterRestoreReceiver()V

    .line 4767
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 4768
    return-void

    .line 4732
    :catch_0
    move-exception v0

    .line 4733
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 4749
    .end local v0           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :catch_1
    move-exception v0

    .line 4752
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 4753
    :catch_2
    move-exception v1

    goto :goto_2

    .line 4743
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 4744
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_7
    const-string v1, "onDestroy mVolumeRec is not registered"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public onFreqChanged(J)V
    .locals 2
    .parameter

    .prologue
    .line 7021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ onFreqChanged  freq = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 7024
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    sget v1, Lcom/sec/android/app/fm/MainActivity;->MAXFREQ:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 7025
    sget v0, Lcom/sec/android/app/fm/MainActivity;->MAXFREQ:F

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 7029
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_1

    .line 7030
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqBgView:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->setFrequency(JZ)V

    .line 7032
    :cond_1
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_3

    .line 7033
    long-to-float v0, p1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 7038
    :goto_1
    return-void

    .line 7026
    :cond_2
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 7027
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    goto :goto_0

    .line 7035
    :cond_3
    const-wide/16 v0, 0xa

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 7036
    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    goto :goto_1
.end method

.method public onFrequencyChanged(J)V
    .locals 10
    .parameter "frequency"

    .prologue
    const-wide/16 v8, 0x14d

    const/high16 v7, 0x3f80

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7051
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFrequency(J)V

    .line 7053
    sget-boolean v3, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v3, :cond_6

    .line 7054
    iget v3, p0, Lcom/sec/android/app/fm/MainActivity;->mDisplayPower:I

    if-eq v3, v6, :cond_4

    .line 7055
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 7056
    .local v0, displayAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 7057
    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 7058
    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 7060
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 7061
    .local v2, freqAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 7062
    const-wide/16 v3, 0xa7

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 7063
    invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 7064
    invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 7066
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7067
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->clearAnimation()V

    .line 7071
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7072
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setVisibility(I)V

    .line 7073
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7080
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7081
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 7083
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 7084
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7086
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 7087
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->clearAnimation()V

    .line 7089
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7090
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7103
    .end local v0           #displayAnimation:Landroid/view/animation/AlphaAnimation;
    .end local v2           #freqAnimation:Landroid/view/animation/AlphaAnimation;
    :goto_1
    iput v6, p0, Lcom/sec/android/app/fm/MainActivity;->mDisplayPower:I

    .line 7107
    :goto_2
    return-void

    .line 7075
    .restart local v0       #displayAnimation:Landroid/view/animation/AlphaAnimation;
    .restart local v2       #freqAnimation:Landroid/view/animation/AlphaAnimation;
    :catch_0
    move-exception v1

    .line 7077
    .local v1, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_0

    .line 7093
    .end local v0           #displayAnimation:Landroid/view/animation/AlphaAnimation;
    .end local v1           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    .end local v2           #freqAnimation:Landroid/view/animation/AlphaAnimation;
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7094
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setVisibility(I)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7100
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 7101
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 7096
    :catch_1
    move-exception v1

    .line 7098
    .restart local v1       #e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_3

    .line 7105
    .end local v1           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 2
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 7142
    sparse-switch p2, :sswitch_data_0

    .line 7161
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 7146
    :sswitch_1
    div-int/lit16 v0, p3, 0x3e8

    .line 7147
    .local v0, seconds:I
    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeconds:I

    if-eq v1, v0, :cond_0

    .line 7148
    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeconds:I

    .line 7149
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->updateRecordedTime()V

    goto :goto_0

    .line 7153
    .end local v0           #seconds:I
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->stopFMRecording()V

    goto :goto_0

    .line 7142
    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_2
        0x321 -> :sswitch_0
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v4, 0x19

    const/16 v5, 0xa

    const/16 v3, 0x18

    const/4 v1, 0x1

    .line 4774
    const/4 v2, 0x4

    if-ne v2, p1, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    if-eqz v2, :cond_1

    .line 4777
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->cancelClicked()V

    .line 4848
    :cond_0
    :goto_0
    return v1

    .line 4782
    :cond_1
    if-eq v4, p1, :cond_2

    if-ne v3, p1, :cond_3

    .line 4784
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4791
    :cond_3
    if-eq v3, p1, :cond_4

    if-ne v4, p1, :cond_8

    .line 4794
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 4796
    iget-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v2, :cond_6

    .line 4798
    iget-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mIsFadeVolume:Z

    if-nez v2, :cond_5

    .line 4801
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    sget v3, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 4807
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->showVolumeBar()V

    goto :goto_0

    .line 4816
    :cond_6
    if-ne v3, p1, :cond_7

    .line 4817
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->changeVolume(I)V

    .line 4821
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 4822
    .local v0, currentVolume:I
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 4823
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->showVolumeBar()V

    goto :goto_0

    .line 4819
    .end local v0           #currentVolume:I
    :cond_7
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->changeVolume(I)V

    goto :goto_1

    .line 4848
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4855
    const/16 v0, 0x18

    if-eq v0, p1, :cond_0

    const/16 v0, 0x19

    if-ne v0, p1, :cond_1

    .line 4856
    :cond_0
    const/4 v0, 0x1

    .line 4858
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 7889
    const-string v0, "onMenuOpened is called"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 7890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsOptionsMenuShowing:Z

    .line 7891
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5024
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 5026
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 5071
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->mIsOptionsMenuShowing:Z

    .line 5072
    return v2

    .line 5027
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 5028
    const-string v0, "MENU_SETTINGS"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5029
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 5030
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5031
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 5032
    const-string v0, "[onClick all channel]"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5033
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 5034
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5035
    :cond_3
    if-ne v0, v4, :cond_7

    .line 5036
    const-string v0, "[onClick scan]"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5038
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5039
    const v0, 0x7f0a0008

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5046
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_6

    .line 5047
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->unableScanToast:Landroid/widget/Toast;

    if-nez v0, :cond_5

    .line 5048
    const/4 v0, 0x0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->unableScanToast:Landroid/widget/Toast;

    .line 5050
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->unableScanToast:Landroid/widget/Toast;

    const v1, 0x7f0a00a4

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 5051
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->unableScanToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5043
    :catch_0
    move-exception v0

    .line 5044
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_1

    .line 5053
    :cond_6
    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    goto :goto_0

    .line 5055
    :cond_7
    if-nez v0, :cond_8

    .line 5056
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5057
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 5058
    :cond_8
    if-ne v0, v2, :cond_9

    .line 5059
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5060
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 5061
    :cond_9
    if-ne v0, v5, :cond_0

    .line 5062
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 5068
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5069
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 4668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsOptionsMenuShowing:Z

    .line 4669
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 4670
    sget v0, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V

    .line 4677
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 4678
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 5083
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsActive:Z

    .line 5086
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 5087
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 5088
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 5089
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->stopBargeIn()V

    .line 5091
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->unregisterPalmReceiver()V

    .line 5092
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->unregisterMotionListener()V

    .line 5093
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x2f

    const/4 v5, 0x0

    .line 4624
    const/16 v0, 0xc

    if-ne p1, v0, :cond_3

    .line 4625
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4626
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->cancel()V

    .line 4629
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4630
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4631
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 4632
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4633
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 4634
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4635
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move-object v0, p2

    .line 4641
    check-cast v0, Landroid/app/AlertDialog;

    .line 4642
    const v2, 0x7f0a006f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/Sounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4653
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 4654
    return-void

    .line 4637
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Sounds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4648
    :cond_3
    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    .line 4649
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->setText(Lcom/sec/android/app/fm/data/Channel;)V

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 5097
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 5098
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V

    .line 5099
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 5133
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5134
    const v0, 0x7f0a0065

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02010c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5155
    :goto_0
    const/4 v0, 0x2

    const v1, 0x7f0a001f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02010a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5157
    const v0, 0x7f0a001b

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020107

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5159
    const v0, 0x7f0a00b0

    invoke-interface {p1, v2, v5, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020104

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5161
    const v0, 0x7f0a001e

    invoke-interface {p1, v2, v6, v6, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020108

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5164
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5165
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020107

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5166
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5172
    :goto_1
    return v4

    .line 5137
    :cond_0
    const v0, 0x7f0a0066

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02010e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 5168
    :cond_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020106

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5169
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 5182
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarText:Landroid/widget/TextView;

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5185
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5193
    :goto_0
    const-string v2, "RNR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Set volume inoking progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fromTouch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isPlaying = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5198
    iget-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    .line 5200
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 5201
    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    .line 5203
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 5204
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5206
    sget v0, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V

    .line 5207
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->changeVolumeIcon()V

    .line 5208
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 5237
    :cond_1
    :goto_1
    return-void

    .line 5186
    :catch_0
    move-exception v0

    .line 5188
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 5191
    goto :goto_0

    .line 5189
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 5213
    :cond_2
    if-nez p3, :cond_3

    if-nez p3, :cond_6

    if-eqz v0, :cond_6

    .line 5214
    :cond_3
    const-string v0, "RNR"

    const-string v2, " keypressed not true"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5217
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5218
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/fm/MainActivity;->showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 5221
    :cond_4
    const-string v0, "RNR"

    const-string v2, " Set volume inoking"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5224
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-nez v0, :cond_5

    .line 5225
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarText:Landroid/widget/TextView;

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5226
    invoke-direct {p0, p2}, Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V

    .line 5228
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 5231
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->changeVolumeIcon()V

    .line 5234
    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5235
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->showVolumeBar()V

    goto :goto_1
.end method

.method public onResults([Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 7367
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 7370
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getIntBargeInResult()I

    move-result v1

    .line 7371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", resultValue : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 7373
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 7374
    packed-switch v1, :pswitch_data_0

    .line 7449
    :cond_0
    :goto_0
    return-void

    .line 7376
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_0

    .line 7379
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_0

    .line 7383
    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7384
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->performClick()Z
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7388
    :catch_0
    move-exception v0

    .line 7390
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    .line 7391
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->performClick()Z

    goto :goto_0

    .line 7396
    :pswitch_3
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7397
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->performClick()Z
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 7401
    :catch_1
    move-exception v0

    .line 7403
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    .line 7404
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->performClick()Z

    goto :goto_0

    .line 7408
    :pswitch_4
    const/16 v0, 0x18

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/fm/MainActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 7411
    :pswitch_5
    const/16 v0, 0x19

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/fm/MainActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 7374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 5251
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 5252
    const-string v1, "onResume -------------------"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5256
    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v1, :cond_2

    .line 5257
    sget v1, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V

    .line 5273
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsActive:Z

    .line 5275
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->myOnResume()V

    .line 5276
    sget-boolean v1, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v1, :cond_1

    .line 5277
    invoke-static {p0}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->setActiveContext(Landroid/content/Context;)V

    .line 5279
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->registerPalmReceiver()V

    .line 5280
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->registerMotionListener()V

    .line 5284
    const-string v1, "onResume ------------------- end"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5285
    return-void

    .line 5261
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5263
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->hideRecoder()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5264
    :catch_0
    move-exception v0

    .line 5265
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "hideRecoder() is called, but view is null"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 3895
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3896
    const-string v1, "onSaveInstanceState"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3897
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3898
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSavedSelectedFreq:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 3899
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    iget v1, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 3901
    .local v0, freq:Ljava/lang/Float;
    const-string v1, "selected_freq"

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3904
    .end local v0           #freq:Ljava/lang/Float;
    :cond_1
    return-void

    .line 3899
    :cond_2
    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSavedSelectedFreq:F

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 2
    .parameter

    .prologue
    .line 5307
    const-string v0, "RNR"

    const-string v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5309
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/fm/MainActivity;->showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 5311
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 5312
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5321
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 5322
    const-string v1, "onStop -------------------"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5324
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 5325
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->notifyToStatusBar()V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5334
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->widgetRefresh()V

    .line 5336
    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsBargeInNotification:Z

    if-eqz v1, :cond_0

    .line 5337
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->hideBargeInNotification()V

    .line 5340
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 5342
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeChangedFromRadio:Z

    .line 5344
    return-void

    .line 5326
    :catch_0
    move-exception v0

    .line 5328
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5332
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 5329
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 5351
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 5354
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->hideSeekbar()V

    .line 5355
    return-void
.end method

.method public onTouchDial(I)V
    .locals 7
    .parameter

    .prologue
    const/high16 v6, 0x3f00

    const/4 v1, 0x0

    const/high16 v5, 0x3f80

    const-wide/16 v3, 0xc8

    const/4 v2, 0x1

    .line 6972
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_0

    .line 6974
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    if-nez v0, :cond_1

    .line 7016
    :cond_0
    :goto_0
    return-void

    .line 6977
    :cond_1
    if-ne p1, v2, :cond_4

    .line 6978
    const-string v0, "MotionEvent.ACTION_UP"

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 6979
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6980
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 6982
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;

    .line 6983
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6984
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6985
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6987
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6988
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->clearAnimation()V

    .line 6990
    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    .line 6991
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6992
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 6993
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 6994
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 6995
    :cond_4
    if-nez p1, :cond_0

    .line 6996
    const-string v0, "MotionEvent.ACTION_DOWN"

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 6997
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6998
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 7000
    :cond_5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;

    .line 7001
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 7002
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7003
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7005
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 7006
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->clearAnimation()V

    .line 7008
    :cond_6
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    .line 7009
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 7010
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 7011
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 7012
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 7013
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 5359
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5360
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V

    .line 5362
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onTouchEvent action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 5364
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchPower(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 7112
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_0

    .line 7113
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    if-nez v0, :cond_1

    .line 7137
    :cond_0
    :goto_0
    return-void

    .line 7116
    :cond_1
    if-ne p1, v1, :cond_2

    .line 7117
    const-string v0, "MotionEvent.ACTION_UP"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 7118
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 7119
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;

    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7120
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 7121
    if-eqz v0, :cond_0

    .line 7122
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 7126
    :cond_2
    if-nez p1, :cond_0

    .line 7127
    const-string v0, "MotionEvent.ACTION_DOWN"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 7128
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 7129
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7130
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 7131
    if-eqz v0, :cond_0

    .line 7132
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 7743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged hasFocus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 7744
    if-eqz p1, :cond_0

    .line 7745
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7746
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->startBargeIn()V

    .line 7749
    :cond_0
    return-void
.end method

.method public radioStatusHideAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 6933
    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDisplayPower:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 6934
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 6935
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6936
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 6937
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 6938
    new-instance v1, Lcom/sec/android/app/fm/MainActivity$36;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$36;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6956
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6957
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 6960
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->setRadioStatusTextVisibility(I)V

    .line 6961
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6963
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    :cond_1
    return-void
.end method

.method recordFMRadioAudio()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5398
    const-string v0, "[recordFMRadioAudio - Record Button onClick]"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5402
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5408
    :goto_0
    if-nez v0, :cond_1

    .line 5409
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->toastOn()V

    .line 5701
    :cond_0
    :goto_1
    return-void

    .line 5403
    :catch_0
    move-exception v0

    .line 5405
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    .line 5411
    :cond_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getAvailableStorage(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5434
    :try_start_1
    const-string v0, "fm_radio_mute=1"

    .line 5435
    const-string v0, "fm_radio_mute=0"

    .line 5439
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setRecordMode(I)V

    .line 5440
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->stopBargeIn()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5442
    const-wide/16 v0, 0x64

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5448
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_2

    .line 5449
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 5450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 5452
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    .line 5453
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 5456
    new-instance v0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 5485
    const-string v0, "SettingsPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5487
    const-string v1, "storage"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5490
    const-string v1, "mounted"

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5497
    :goto_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5498
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5499
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5500
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".fmradio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHiddenFileName:Ljava/lang/String;

    .line 5501
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->deleteRecordingHiddenFile()V

    .line 5504
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 5505
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 5506
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHiddenFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 5508
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const v1, 0x1f400

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 5512
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 5521
    const-string v0, "[recordFMRadioAudio] SamplingRate : 44100"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5522
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const v1, 0xac44

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 5524
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const v1, 0x2ca2068

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 5526
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 5527
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 5528
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v1, 0x300

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    .line 5529
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAuthor(I)V

    .line 5531
    sget-boolean v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v0, :cond_7

    .line 5532
    invoke-static {p0}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v0

    .line 5533
    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getCurTagList()Lcom/sec/android/app/fm/ui/RTPTagList;

    move-result-object v0

    .line 5536
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_perf:Ljava/lang/String;

    .line 5537
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_album:Ljava/lang/String;

    .line 5541
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5542
    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_perf:Ljava/lang/String;

    .line 5543
    :cond_4
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5544
    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_album:Ljava/lang/String;

    .line 5546
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_perf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " album:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5549
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_perf:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 5550
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_perf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setPerformer(Ljava/lang/String;)V

    .line 5551
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_album:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 5552
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAlbum(Ljava/lang/String;)V

    .line 5555
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->prepare()V

    .line 5556
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 5557
    const-string v0, "[recordFMRadioAudio - Record Button starting.... ]"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsFadeVolume:Z

    .line 5563
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    .line 5565
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mReturnFadeVolume:I

    .line 5566
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 5568
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->changeVolumeIcon()V

    .line 5569
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 5574
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 5577
    const/high16 v1, 0x4

    :try_start_4
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 5582
    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 5585
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->start()V

    .line 5595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    .line 5596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->isWarningckMemFull:Z

    .line 5597
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->showRecoder()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_5 .. :try_end_5} :catch_1

    .line 5692
    const/4 v0, 0x0

    :try_start_6
    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeconds:I

    .line 5693
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->updateRecordedTime()V

    .line 5695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z
    :try_end_6
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 5698
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 5443
    :catch_2
    move-exception v0

    .line 5445
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 5598
    :catch_3
    move-exception v0

    .line 5600
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_8 .. :try_end_8} :catch_1

    .line 5608
    :goto_5
    :try_start_9
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_8

    .line 5609
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 5610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 5620
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->deleteRecordingHiddenFile()V

    .line 5624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsFadeVolume:Z

    .line 5625
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5626
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 5629
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->startBargeIn()V
    :try_end_9
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    .line 5494
    :cond_a
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v0

    goto/16 :goto_3

    .line 5631
    :catch_4
    move-exception v0

    .line 5633
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_b .. :try_end_b} :catch_1

    .line 5641
    :goto_6
    :try_start_c
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_b

    .line 5642
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 5643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 5647
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsFadeVolume:Z

    .line 5648
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5649
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 5652
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->startBargeIn()V

    goto/16 :goto_1

    .line 5656
    :catch_5
    move-exception v0

    .line 5658
    const-string v1, "FmRadioRec"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_c .. :try_end_c} :catch_1

    .line 5661
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_d .. :try_end_d} :catch_1

    .line 5668
    :goto_7
    :try_start_e
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_d

    .line 5669
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 5670
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 5679
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->deleteRecordingHiddenFile()V

    .line 5683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsFadeVolume:Z

    .line 5684
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5685
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 5688
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->startBargeIn()V
    :try_end_e
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_1

    .line 5578
    :catch_6
    move-exception v0

    goto/16 :goto_4

    .line 5601
    :catch_7
    move-exception v0

    goto/16 :goto_5

    .line 5634
    :catch_8
    move-exception v0

    goto :goto_6

    .line 5662
    :catch_9
    move-exception v0

    goto :goto_7
.end method

.method public registerCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 5971
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 5972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    .line 5973
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5974
    return-void
.end method

.method registerMotionListener()V
    .locals 2

    .prologue
    .line 7857
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    .line 7858
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 7859
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;)V

    .line 7860
    return-void
.end method

.method removeAllChannel()V
    .locals 4

    .prologue
    .line 5985
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 5986
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5987
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5988
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 5989
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5990
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5991
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity$Callback;->notifyUI()V

    .line 5990
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5987
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 5994
    :cond_0
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 5995
    return-void
.end method

.method sendFMStatusBroadcast(FLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 962
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player_lock.status.channel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 963
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_0

    .line 964
    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 965
    const-string v2, "freq"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    :goto_0
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 971
    return-void

    .line 967
    :cond_0
    const-string v1, "freq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setIsShowCustomOptionMenu(Z)V
    .locals 0
    .parameter "isShow"

    .prologue
    .line 7197
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsShowCustomOptionMenu:Z

    .line 7198
    return-void
.end method

.method public showSeekingText()V
    .locals 2

    .prologue
    .line 6906
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 6907
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6908
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6910
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRdsPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 6911
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRdsPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6913
    :cond_1
    return-void
.end method

.method public showTurningOnText()V
    .locals 2

    .prologue
    .line 6918
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 6919
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    const v1, 0x7f0a00cd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6920
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6921
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 6923
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRdsPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 6924
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRdsPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6926
    :cond_1
    return-void
.end method

.method public showVolumeBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6321
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_1

    .line 6322
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 6323
    const/4 v0, 0x0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    .line 6325
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 6326
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6350
    :goto_0
    return-void

    .line 6330
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_sound_off"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 6331
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SOUND_OFF_TOAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6332
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 6335
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 6336
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6337
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6338
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 6349
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->hideSeekbar()V

    goto :goto_0
.end method

.method public startBargeIn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7506
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 7507
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 7508
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control_radio"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 7509
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    iget-boolean v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v0, :cond_0

    .line 7510
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 7511
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->startBargeIn(I)V

    .line 7513
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->showBargeInNotification()V

    .line 7520
    :cond_0
    return-void
.end method

.method startScan(Z)Z
    .locals 3
    .parameter "isUpdateUI"

    .prologue
    .line 6360
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsUpdateUI:Z

    .line 6363
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6364
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sec/android/app/fm/MainActivity;->mWillTune:J

    .line 6365
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->on()V

    .line 6368
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->scan()V

    .line 6369
    const/4 v1, 0x1

    .line 6373
    :goto_1
    return v1

    .line 6367
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/fm/MainActivity;->mWillTune:J
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6371
    :catch_0
    move-exception v0

    .line 6372
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    .line 6373
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public stopBargeIn()V
    .locals 1

    .prologue
    .line 7523
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    iget-boolean v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v0, :cond_0

    .line 7527
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    .line 7529
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->hideBargeInNotification()V

    .line 7535
    :cond_0
    return-void
.end method

.method public toastOn()V
    .locals 2

    .prologue
    .line 6606
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->onToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 6607
    const v0, 0x7f0a0017

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->onToast:Landroid/widget/Toast;

    .line 6608
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->onToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6609
    return-void
.end method

.method public tune(FLandroid/view/View;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6631
    const-string v0, "tune"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6641
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 6642
    :try_start_0
    sget p1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 6644
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6645
    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v0, :cond_2

    .line 6646
    const-string v0, "WorkerThread is busy ignore the events.."

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6659
    :cond_1
    :goto_0
    return-void

    .line 6649
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tune : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 6650
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6651
    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x447a

    mul-float/2addr v2, p1

    float-to-int v2, v2

    int-to-long v2, v2

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/fm/WorkerThread;->doOperation(IJLandroid/view/View;I)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6656
    :catch_0
    move-exception v0

    .line 6657
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 6667
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 6668
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6670
    :cond_0
    return-void
.end method

.method unregisterMotionListener()V
    .locals 2

    .prologue
    .line 7863
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 7864
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 7865
    :cond_0
    return-void
.end method

.method updateAllChListView()V
    .locals 3

    .prologue
    .line 6681
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 6682
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6683
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 6684
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity$Callback;->notifyUI()V

    .line 6683
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6687
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method updateMediaStore()Z
    .locals 15

    .prologue
    const-wide/16 v13, 0x3e8

    const/4 v1, 0x1

    const/4 v12, 0x0

    const v11, 0x7f0a0073

    const/4 v3, 0x0

    .line 6700
    const-string v0, "[updateMediaStore] Add Saved file to MediaStore"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6703
    const-string v0, "SettingsPreference"

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 6704
    const-string v0, "storage"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6707
    const-string v2, "mounted"

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Sounds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    .line 6713
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6714
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6715
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6720
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-direct {p0, p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getRecordFileTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFileTitle:Ljava/lang/String;

    .line 6724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".m4a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    .line 6729
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6730
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6731
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 6732
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 6733
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 6735
    if-ltz v5, :cond_1

    if-gt v5, v2, :cond_1

    if-ltz v6, :cond_1

    if-gt v6, v2, :cond_1

    .line 6738
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move v0, v1

    .line 6741
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 6742
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6743
    iget-object v9, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v9, v2, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 6745
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6746
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 6747
    iput-object v9, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    .line 6748
    iput-object v8, p0, Lcom/sec/android/app/fm/MainActivity;->mFileTitle:Ljava/lang/String;

    move-object v0, v2

    .line 6756
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mHiddenFileName:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6761
    :try_start_0
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 6762
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity;->mHiddenFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 6764
    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 6765
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    .line 6767
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 6770
    cmp-long v5, v6, v13

    if-gez v5, :cond_4

    .line 6771
    const-string v0, "file duration is lower than 1000ms"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6773
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->deleteRecordingHiddenFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 6898
    :goto_2
    return v1

    .line 6710
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Sounds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    goto/16 :goto_0

    .line 6752
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 6753
    goto/16 :goto_1

    .line 6788
    :cond_4
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 6789
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "move result : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6790
    if-nez v2, :cond_8

    .line 6791
    const-string v0, "rename failed"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6793
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    if-nez v0, :cond_5

    .line 6794
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    .line 6796
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 6797
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6799
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->cancelFMRecording()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v3

    .line 6800
    goto :goto_2

    .line 6802
    :catch_0
    move-exception v0

    .line 6804
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 6808
    :goto_3
    const-string v1, "FMApp"

    const-string v2, "error occurred while rename temp file "

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6810
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    if-nez v1, :cond_6

    .line 6811
    invoke-static {p0, v12, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    .line 6813
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    invoke-virtual {v1, v11}, Landroid/widget/Toast;->setText(I)V

    .line 6814
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6816
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->cancelFMRecording()V

    .line 6820
    const-string v1, "storage"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6823
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 6825
    const-string v1, "FMApp"

    const-string v2, "updateMediaStore :: Changed the recording path from memory card to phone !"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6828
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6829
    const-string v1, "storage"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6831
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    move v1, v3

    .line 6834
    goto/16 :goto_2

    .line 6838
    :cond_8
    :try_start_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 6839
    const-string v4, "title"

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mFileTitle:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6840
    const-string v4, "mime_type"

    const-string v5, "audio/3gpp"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6841
    const-string v4, "_data"

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6842
    const-string v4, "duration"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6843
    const-string v4, "_size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6844
    const-string v4, "date_modified"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6845
    const-string v4, "is_music"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6846
    const-string v4, "recordingtype"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6848
    sget-boolean v4, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v4, :cond_a

    .line 6849
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_perf:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 6850
    const-string v4, "artist"

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_perf:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6851
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_album:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 6852
    const-string v4, "album"

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_album:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6854
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 6856
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateMediaStore] saved file uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6857
    if-nez v2, :cond_c

    .line 6858
    const-string v2, "Content Resolver insert failed"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6860
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    if-nez v2, :cond_b

    .line 6861
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    .line 6863
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    const v4, 0x7f0a0073

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setText(I)V

    .line 6864
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 6867
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->cancelFMRecording()V

    .line 6868
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 6869
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 6896
    :cond_c
    :goto_4
    const-string v0, "[updateMediaStore] Exit"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6874
    :catch_1
    move-exception v2

    .line 6876
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 6880
    :goto_5
    const-string v4, "FMApp"

    const-string v5, "error occurred while input data to MediaStore"

    invoke-static {v4, v5, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6882
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    if-nez v2, :cond_d

    .line 6883
    invoke-static {p0, v12, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    .line 6885
    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    invoke-virtual {v2, v11}, Landroid/widget/Toast;->setText(I)V

    .line 6886
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 6889
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->cancelFMRecording()V

    .line 6890
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 6891
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 6805
    :catch_2
    move-exception v1

    goto/16 :goto_3

    .line 6877
    :catch_3
    move-exception v4

    goto :goto_5
.end method
