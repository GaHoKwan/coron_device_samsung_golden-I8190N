.class public Lcom/android/server/pm/ShutdownThreadFeature;
.super Ljava/lang/Thread;
.source "ShutdownThreadFeature.java"


# static fields
.field protected static LedOffValue:I = 0x0

.field protected static LedOnValue:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static WiFiOff:Z

.field private static bluetoothOff:Z

.field private static nfcOff:Z

.field private static radioOff:Z


# instance fields
.field private final bluetooth:Landroid/bluetooth/IBluetooth;

.field mContext:Landroid/content/Context;

.field private mReboot:Z

.field private final nfc:Landroid/nfc/INfcAdapter;

.field private final phone:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 54
    sput v0, Lcom/android/server/pm/ShutdownThreadFeature;->LedOnValue:I

    .line 55
    sput v0, Lcom/android/server/pm/ShutdownThreadFeature;->LedOffValue:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "TAG"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 70
    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    .line 71
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;

    .line 72
    const-string v0, "bluetooth"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetoothOff:Z

    sput-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    sput-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    .line 75
    return-void
.end method

.method public static SituationVolume(Landroid/media/AudioManager;Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "audioManager"
    .parameter "mp"

    .prologue
    .line 78
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v1, "ShutdownThread"

    const-string v2, "set situation volume"

    invoke-static {v1, v2}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v1, "situation=8;device=0"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 84
    .local v0, situationVol:F
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    sput-boolean p0, Lcom/android/server/pm/ShutdownThreadFeature;->nfcOff:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/nfc/INfcAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetoothOff:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    sput-boolean p0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetoothOff:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    sput-boolean p0, Lcom/android/server/pm/ShutdownThreadFeature;->radioOff:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/pm/ShutdownThreadFeature;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->mReboot:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/ShutdownThreadFeature;)Lcom/android/internal/telephony/ITelephony;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/server/pm/ShutdownThreadFeature;->WiFiOff:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    sput-boolean p0, Lcom/android/server/pm/ShutdownThreadFeature;->WiFiOff:Z

    return p0
.end method


# virtual methods
.method protected preShutdownRadios(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 89
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method protected shutdownRadios(ILandroid/content/Context;Z)V
    .locals 10
    .parameter "timeout"
    .parameter "con"
    .parameter "reboot"

    .prologue
    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, p1

    add-long v3, v6, v8

    .line 96
    .local v3, endTime:J
    const/4 v1, 0x1

    new-array v5, v1, [Z

    .line 97
    .local v5, done:[Z
    iput-object p2, p0, Lcom/android/server/pm/ShutdownThreadFeature;->mContext:Landroid/content/Context;

    .line 98
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThreadFeature;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 99
    .local v2, mWifiManager:Landroid/net/wifi/WifiManager;
    iput-boolean p3, p0, Lcom/android/server/pm/ShutdownThreadFeature;->mReboot:Z

    .line 100
    new-instance v0, Lcom/android/server/pm/ShutdownThreadFeature$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShutdownThreadFeature$1;-><init>(Lcom/android/server/pm/ShutdownThreadFeature;Landroid/net/wifi/WifiManager;J[Z)V

    .line 249
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 251
    int-to-long v6, p1

    :try_start_0
    invoke-virtual {v0, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_0

    .line 255
    const-string v1, "ShutdownThread"

    const-string v6, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v6}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    return-void

    .line 252
    :catch_0
    move-exception v1

    goto :goto_0
.end method
