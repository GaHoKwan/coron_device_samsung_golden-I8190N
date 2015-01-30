.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1079
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1080
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1082
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1084
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 104
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    return-void
.end method

.method public run()V
    .locals 130

    .prologue
    .line 110
    const-string v3, "SystemServer"

    const-string v9, "!@SystemServer Thread begins..."

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v3, "BUILD_DESC"

    const-string v9, "ro.build.description"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 116
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 118
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 121
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 122
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 126
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    .line 128
    .local v109, shutdownAction:Ljava/lang/String;
    if-eqz v109, :cond_0

    invoke-virtual/range {v109 .. v109}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 129
    const/4 v3, 0x0

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_13

    const/16 v103, 0x1

    .line 132
    .local v103, reboot:Z
    :goto_0
    invoke-virtual/range {v109 .. v109}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_14

    .line 133
    const/4 v3, 0x1

    invoke-virtual/range {v109 .. v109}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v109

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v102

    .line 138
    .local v102, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v103

    move-object/from16 v1, v102

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 142
    .end local v102           #reason:Ljava/lang/String;
    .end local v103           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    .line 143
    .local v77, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v77

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v76, 0x0

    .line 145
    .local v76, factoryTest:I
    :goto_2
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 147
    .local v16, headless:Z
    const/16 v41, 0x0

    .line 148
    .local v41, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v59, 0x0

    .line 149
    .local v59, contentService:Landroid/content/ContentService;
    const/16 v83, 0x0

    .line 150
    .local v83, lights:Lcom/android/server/LightsService;
    const/16 v101, 0x0

    .line 151
    .local v101, power:Lcom/android/server/PowerManagerService;
    const/16 v49, 0x0

    .line 152
    .local v49, battery:Lcom/android/server/BatteryService;
    const/16 v120, 0x0

    .line 153
    .local v120, vibrator:Lcom/android/server/VibratorService;
    const/16 v43, 0x0

    .line 154
    .local v43, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 155
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 156
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v92, 0x0

    .line 157
    .local v92, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v57, 0x0

    .line 158
    .local v57, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v127, 0x0

    .line 159
    .local v127, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v125, 0x0

    .line 160
    .local v125, wifi:Lcom/android/server/WifiService;
    const/16 v108, 0x0

    .line 161
    .local v108, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v100, 0x0

    .line 162
    .local v100, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 163
    .local v4, context:Landroid/content/Context;
    const/16 v129, 0x0

    .line 164
    .local v129, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v50, 0x0

    .line 165
    .local v50, bluetooth:Landroid/server/BluetoothService;
    const/16 v52, 0x0

    .line 166
    .local v52, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v46, 0x0

    .line 167
    .local v46, avrcp:Landroid/server/AvrcpStubService;
    const/16 v69, 0x0

    .line 168
    .local v69, dock:Lcom/android/server/DockObserver;
    const/16 v118, 0x0

    .line 169
    .local v118, usb:Lcom/android/server/usb/UsbService;
    const/16 v106, 0x0

    .line 170
    .local v106, serial:Lcom/android/server/SerialService;
    const/16 v116, 0x0

    .line 171
    .local v116, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v104, 0x0

    .line 172
    .local v104, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v112, 0x0

    .line 173
    .local v112, throttle:Lcom/android/server/ThrottleService;
    const/16 v94, 0x0

    .line 174
    .local v94, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v54, 0x0

    .line 175
    .local v54, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v81, 0x0

    .line 176
    .local v81, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v63, 0x0

    .line 179
    .local v63, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    const/16 v65, 0x0

    .line 182
    .local v65, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 185
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_59

    .line 187
    .end local v101           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 189
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static/range {v76 .. v76}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 192
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 195
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 199
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 201
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 204
    .local v62, cryptState:Ljava/lang/String;
    const/16 v98, 0x0

    .line 205
    .local v98, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 206
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/16 v98, 0x1

    .line 213
    :cond_1
    :goto_3
    const-string v3, "SystemServer"

    const-string v9, "!@beginofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz v76, :cond_17

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v98

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v100

    .line 217
    const-string v3, "SystemServer"

    const-string v9, "!@endofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    const/16 v78, 0x0

    .line 221
    .local v78, firstBoot:Z
    :try_start_2
    invoke-interface/range {v100 .. v100}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v78

    .line 225
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 227
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 231
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v42, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 233
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .local v42, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_5
    const-string v3, "account"

    move-object/from16 v0, v42

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5a

    move-object/from16 v41, v42

    .line 238
    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_6
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v3, 0x1

    move/from16 v0, v76

    if-ne v0, v3, :cond_18

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v59

    .line 244
    new-instance v66, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v66

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 246
    .end local v65           #dEncService:Lcom/android/server/DirEncryptService;
    .local v66, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_7
    sget-boolean v3, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v3, :cond_2

    .line 247
    const-string v3, "DirEncryptService"

    move-object/from16 v0, v66

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5b

    :cond_2
    move-object/from16 v65, v66

    .line 254
    .end local v66           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v65       #dEncService:Lcom/android/server/DirEncryptService;
    :goto_8
    :try_start_8
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 257
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v84, Lcom/android/server/LightsService;

    move-object/from16 v0, v84

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 260
    .end local v83           #lights:Lcom/android/server/LightsService;
    .local v84, lights:Lcom/android/server/LightsService;
    :try_start_9
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v84

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5c

    .line 262
    .end local v49           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_a
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 264
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v121, Lcom/android/server/VibratorService;

    move-object/from16 v0, v121

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5d

    .line 266
    .end local v120           #vibrator:Lcom/android/server/VibratorService;
    .local v121, vibrator:Lcom/android/server/VibratorService;
    :try_start_b
    const-string v3, "vibrator"

    move-object/from16 v0, v121

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 270
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v84

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 272
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5e

    .line 274
    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_c
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 276
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 280
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v3, 0x1

    move/from16 v0, v76

    if-eq v0, v3, :cond_19

    const/4 v3, 0x1

    move v9, v3

    :goto_9
    if-nez v78, :cond_1a

    const/4 v3, 0x1

    :goto_a
    move/from16 v0, v98

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v129

    .line 284
    const-string v3, "window"

    move-object/from16 v0, v129

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 285
    invoke-virtual/range {v129 .. v129}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v81

    .line 286
    const-string v3, "input"

    move-object/from16 v0, v81

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 288
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v129

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 293
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 294
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3

    :goto_b
    move-object/from16 v120, v121

    .end local v121           #vibrator:Lcom/android/server/VibratorService;
    .restart local v120       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v83, v84

    .line 330
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v78           #firstBoot:Z
    .end local v84           #lights:Lcom/android/server/LightsService;
    .end local v98           #onlyCore:Z
    .restart local v83       #lights:Lcom/android/server/LightsService;
    :goto_c
    const/16 v67, 0x0

    .line 332
    .local v67, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v74, 0x0

    .line 334
    .local v74, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v110, 0x0

    .line 335
    .local v110, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v79, 0x0

    .line 336
    .local v79, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v44, 0x0

    .line 337
    .local v44, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v96, 0x0

    .line 338
    .local v96, notification:Lcom/android/server/NotificationManagerService;
    const/16 v123, 0x0

    .line 339
    .local v123, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v85, 0x0

    .line 340
    .local v85, location:Lcom/android/server/LocationManagerService;
    const/16 v60, 0x0

    .line 341
    .local v60, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v114, 0x0

    .line 342
    .local v114, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v87, 0x0

    .line 343
    .local v87, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v71, 0x0

    .line 346
    .local v71, dreamy:Landroid/service/dreams/DreamManagerService;
    const/4 v3, 0x1

    move/from16 v0, v76

    if-eq v0, v3, :cond_3

    .line 348
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v80, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v80

    move-object/from16 v1, v129

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    .line 350
    .end local v79           #imm:Lcom/android/server/InputMethodManagerService;
    .local v80, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_e
    const-string v3, "input_method"

    move-object/from16 v0, v80

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_58

    move-object/from16 v79, v80

    .line 356
    .end local v80           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v79       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_f
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    .line 366
    :cond_3
    :goto_e
    :try_start_10
    const-string v3, "SystemServer"

    const-string v9, "CustomeFrequencyManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v64, Lcom/android/server/CustomFrequencyManagerService;

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Lcom/android/server/CustomFrequencyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    .line 368
    .end local v63           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .local v64, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :try_start_11
    const-string v3, "CustomFrequencyManagerService"

    move-object/from16 v0, v64

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_57

    move-object/from16 v63, v64

    .line 374
    .end local v64           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v63       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :goto_f
    :try_start_12
    invoke-virtual/range {v129 .. v129}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7

    .line 380
    :goto_10
    :try_start_13
    invoke-interface/range {v100 .. v100}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8

    .line 386
    :goto_11
    :try_start_14
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10404ea

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_56

    .line 393
    :goto_12
    const/4 v3, 0x1

    move/from16 v0, v76

    if-eq v0, v3, :cond_1e

    .line 394
    const/16 v90, 0x0

    .line 395
    .local v90, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 401
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v91, Lcom/android/server/MountService;

    move-object/from16 v0, v91

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_9

    .line 403
    .end local v90           #mountService:Lcom/android/server/MountService;
    .local v91, mountService:Lcom/android/server/MountService;
    :try_start_16
    const-string v3, "mount"

    move-object/from16 v0, v91

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_55

    move-object/from16 v90, v91

    .line 411
    .end local v91           #mountService:Lcom/android/server/MountService;
    .restart local v90       #mountService:Lcom/android/server/MountService;
    :cond_4
    :goto_13
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "DirEncryptSerrvice"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    if-eqz v65, :cond_5

    .line 413
    const-string v3, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual/range {v65 .. v65}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_a

    .line 422
    :cond_5
    :goto_14
    :try_start_18
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v88, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v88

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b

    .line 424
    .end local v87           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v88, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_19
    const-string v3, "lock_settings"

    move-object/from16 v0, v88

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_54

    move-object/from16 v87, v88

    .line 430
    .end local v88           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v87       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_15
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v68, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v68

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_c

    .line 432
    .end local v67           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v68, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1b
    const-string v3, "device_policy"

    move-object/from16 v0, v68

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_53

    move-object/from16 v67, v68

    .line 440
    .end local v68           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v67       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_16
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v75, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v100

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v3, v0

    move-object/from16 v0, v75

    invoke-direct {v0, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d

    .line 442
    .end local v74           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v75, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_1d
    const-string v3, "enterprise_policy"

    move-object/from16 v0, v75

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 443
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_52

    move-object/from16 v74, v75

    .line 450
    .end local v75           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v74       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :goto_17
    :try_start_1e
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v111, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v111

    move-object/from16 v1, v129

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_e

    .line 452
    .end local v110           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v111, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1f
    const-string v3, "statusbar"

    move-object/from16 v0, v111

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_51

    move-object/from16 v110, v111

    .line 458
    .end local v111           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v110       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_18
    :try_start_20
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_f

    .line 469
    :goto_19
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v3, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v4}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_10

    .line 477
    :goto_1a
    :try_start_22
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 479
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    .line 485
    :goto_1b
    :try_start_23
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v115, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12

    .line 487
    .end local v114           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v115, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_24
    const-string v3, "textservices"

    move-object/from16 v0, v115

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_50

    move-object/from16 v114, v115

    .line 493
    .end local v115           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v114       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_1c
    :try_start_25
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v93, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v93

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_13

    .line 495
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v93, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_26
    const-string v3, "netstats"

    move-object/from16 v0, v93

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_4f

    move-object/from16 v12, v93

    .line 501
    .end local v93           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_1d
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_14

    .line 505
    .end local v92           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_28
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_4e

    .line 511
    :goto_1e
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v128, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v128

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_15

    .line 513
    .end local v127           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v128, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2a
    const-string v3, "wifip2p"

    move-object/from16 v0, v128

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_4d

    move-object/from16 v127, v128

    .line 519
    .end local v128           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v127       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1f
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v126, Lcom/android/server/WifiService;

    move-object/from16 v0, v126

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_16

    .line 521
    .end local v125           #wifi:Lcom/android/server/WifiService;
    .local v126, wifi:Lcom/android/server/WifiService;
    :try_start_2c
    const-string v3, "wifi"

    move-object/from16 v0, v126

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_4c

    move-object/from16 v125, v126

    .line 527
    .end local v126           #wifi:Lcom/android/server/WifiService;
    .restart local v125       #wifi:Lcom/android/server/WifiService;
    :goto_20
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance v58, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v58

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_17

    .line 530
    .end local v57           #connectivity:Lcom/android/server/ConnectivityService;
    .local v58, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2e
    const-string v3, "connectivity"

    move-object/from16 v0, v58

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 531
    move-object/from16 v0, v58

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 532
    move-object/from16 v0, v58

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 533
    invoke-virtual/range {v125 .. v125}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 534
    invoke-virtual/range {v127 .. v127}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_4b

    move-object/from16 v57, v58

    .line 540
    .end local v58           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v57       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_21
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v108

    .line 542
    const-string v3, "servicediscovery"

    move-object/from16 v0, v108

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_18

    .line 549
    :goto_22
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v113, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v113

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_19

    .line 551
    .end local v112           #throttle:Lcom/android/server/ThrottleService;
    .local v113, throttle:Lcom/android/server/ThrottleService;
    :try_start_31
    const-string v3, "throttle"

    move-object/from16 v0, v113

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_4a

    move-object/from16 v112, v113

    .line 558
    .end local v113           #throttle:Lcom/android/server/ThrottleService;
    .restart local v112       #throttle:Lcom/android/server/ThrottleService;
    :goto_23
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1a

    .line 570
    :goto_24
    if-eqz v90, :cond_6

    .line 572
    const-string v3, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "trigger_restart_min_framework"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 573
    invoke-virtual/range {v90 .. v90}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 577
    :cond_6
    if-eqz v41, :cond_7

    .line 578
    :try_start_33
    invoke-virtual/range {v41 .. v41}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1b

    .line 584
    :cond_7
    :goto_25
    if-eqz v59, :cond_8

    .line 585
    :try_start_34
    invoke-virtual/range {v59 .. v59}, Landroid/content/ContentService;->systemReady()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1c

    .line 591
    :cond_8
    :goto_26
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v97, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v97

    move-object/from16 v1, v110

    move-object/from16 v2, v83

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1d

    .line 593
    .end local v96           #notification:Lcom/android/server/NotificationManagerService;
    .local v97, notification:Lcom/android/server/NotificationManagerService;
    :try_start_36
    const-string v3, "notification"

    move-object/from16 v0, v97

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 594
    move-object/from16 v0, v97

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_49

    move-object/from16 v96, v97

    .line 600
    .end local v97           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v96       #notification:Lcom/android/server/NotificationManagerService;
    :goto_27
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1e

    .line 608
    :goto_28
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    new-instance v86, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v86

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1f

    .line 610
    .end local v85           #location:Lcom/android/server/LocationManagerService;
    .local v86, location:Lcom/android/server/LocationManagerService;
    :try_start_39
    const-string v3, "location"

    move-object/from16 v0, v86

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_48

    move-object/from16 v85, v86

    .line 616
    .end local v86           #location:Lcom/android/server/LocationManagerService;
    .restart local v85       #location:Lcom/android/server/LocationManagerService;
    :goto_29
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v61, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v61

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_20

    .line 618
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v61, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3b
    const-string v3, "country_detector"

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_47

    move-object/from16 v60, v61

    .line 624
    .end local v61           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_2a
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_21

    .line 632
    :goto_2b
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_22

    .line 639
    :goto_2c
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110026

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 642
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    if-nez v16, :cond_9

    .line 644
    new-instance v124, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v124

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_23

    .line 645
    .end local v123           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v124, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_3f
    const-string v3, "wallpaper"

    move-object/from16 v0, v124

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_46

    move-object/from16 v123, v124

    .line 652
    .end local v124           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v123       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_9
    :goto_2d
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 654
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_24

    .line 662
    :cond_a
    :goto_2e
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v70, Lcom/android/server/DockObserver;

    move-object/from16 v0, v70

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_25

    .end local v69           #dock:Lcom/android/server/DockObserver;
    .local v70, dock:Lcom/android/server/DockObserver;
    move-object/from16 v69, v70

    .line 670
    .end local v70           #dock:Lcom/android/server/DockObserver;
    .restart local v69       #dock:Lcom/android/server/DockObserver;
    :goto_2f
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_26

    .line 678
    :goto_30
    :try_start_43
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    new-instance v119, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v119

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_27

    .line 681
    .end local v118           #usb:Lcom/android/server/usb/UsbService;
    .local v119, usb:Lcom/android/server/usb/UsbService;
    :try_start_44
    const-string v3, "usb"

    move-object/from16 v0, v119

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_45

    move-object/from16 v118, v119

    .line 687
    .end local v119           #usb:Lcom/android/server/usb/UsbService;
    .restart local v118       #usb:Lcom/android/server/usb/UsbService;
    :goto_31
    :try_start_45
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    new-instance v107, Lcom/android/server/SerialService;

    move-object/from16 v0, v107

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_28

    .line 690
    .end local v106           #serial:Lcom/android/server/SerialService;
    .local v107, serial:Lcom/android/server/SerialService;
    :try_start_46
    const-string v3, "serial"

    move-object/from16 v0, v107

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_44

    move-object/from16 v106, v107

    .line 696
    .end local v107           #serial:Lcom/android/server/SerialService;
    .restart local v106       #serial:Lcom/android/server/SerialService;
    :goto_32
    :try_start_47
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    new-instance v117, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v117

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_29

    .end local v116           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v117, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v116, v117

    .line 704
    .end local v117           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v116       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_33
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2a

    .line 712
    :goto_34
    :try_start_49
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    new-instance v45, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2b

    .line 714
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .local v45, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4a
    const-string v3, "appwidget"

    move-object/from16 v0, v45

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_43

    move-object/from16 v44, v45

    .line 720
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_35
    :try_start_4b
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v105, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v105

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2c

    .end local v104           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v105, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v104, v105

    .line 727
    .end local v105           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v104       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_36
    :try_start_4c
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2d

    .line 738
    :goto_37
    :try_start_4d
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2e

    .line 746
    :goto_38
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance v95, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v95

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2f

    .end local v94           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v95, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v94, v95

    .line 751
    .end local v95           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v94       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_39
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v99

    .line 753
    .local v99, packageMgr:Landroid/content/pm/PackageManager;
    const-string v3, "com.sec.feature.irda_service"

    move-object/from16 v0, v99

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 755
    :try_start_4f
    const-string v3, "SystemServer"

    const-string v9, "IRDA Service!! Enable the IRDA service!!"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    new-instance v82, Landroid/app/IrdaService;

    move-object/from16 v0, v82

    invoke-direct {v0, v4}, Landroid/app/IrdaService;-><init>(Landroid/content/Context;)V

    .line 757
    .local v82, irda:Landroid/app/IrdaService;
    const-string v3, "irda"

    move-object/from16 v0, v82

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_30

    .line 763
    .end local v82           #irda:Landroid/app/IrdaService;
    :cond_b
    :goto_3a
    const-string v3, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v99

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 765
    :try_start_50
    const-string v3, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v48, Landroid/app/BarBeamService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 768
    .local v48, barbeam:Landroid/app/BarBeamService;
    const-string v3, "barbeam"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_31

    .line 774
    .end local v48           #barbeam:Landroid/app/BarBeamService;
    :cond_c
    :goto_3b
    :try_start_51
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v55, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v55

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_32

    .line 776
    .end local v54           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v55, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_52
    const-string v3, "commontime_management"

    move-object/from16 v0, v55

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_42

    move-object/from16 v54, v55

    .line 782
    .end local v55           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v54       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_3c
    :try_start_53
    const-string v3, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-string v3, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v4}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_33

    .line 790
    :goto_3d
    :try_start_54
    const-string v3, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const-string v3, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v4}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_34

    .line 799
    :goto_3e
    :try_start_55
    const-string v3, "samsung.facedetection_service"

    new-instance v9, Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-direct {v9, v4}, Lcom/sec/android/facedetection/FaceDetectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_35

    .line 806
    :goto_3f
    :try_start_56
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_36

    .line 812
    :goto_40
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x111003a

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 815
    :try_start_57
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    new-instance v72, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v72

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_37

    .line 818
    .end local v71           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v72, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_58
    const-string v3, "dreams"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_41

    move-object/from16 v71, v72

    .line 827
    .end local v72           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v71       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_d
    :goto_41
    :try_start_59
    const-string v3, "SystemServer"

    const-string v9, "BT FM Power Management Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const-string v3, "bt_fm_radio"

    new-instance v9, Lcom/broadcom/bt/service/framework/PowerManagementService;

    invoke-direct {v9, v4}, Lcom/broadcom/bt/service/framework/PowerManagementService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_38

    .line 835
    :goto_42
    const-string v3, "SystemServer"

    const-string v9, "SEC_PRODUCT_FEATURE_SUPPORT_FMRADIO true"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :try_start_5a
    const-string v3, "SystemServer"

    const-string v9, "FM_RADIO_SERVICE"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const-string v3, "FMPlayer"

    new-instance v9, Lcom/android/server/FMRadioService;

    invoke-direct {v9, v4}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 839
    const-string v3, "SystemServer"

    const-string v9, "[FMPlayer]FMRadio service added.."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_39

    .line 848
    .end local v90           #mountService:Lcom/android/server/MountService;
    .end local v99           #packageMgr:Landroid/content/pm/PackageManager;
    :goto_43
    invoke-virtual/range {v129 .. v129}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v28

    .line 850
    .local v28, safeMode:Z
    if-eqz v28, :cond_1d

    .line 851
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 853
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 855
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 864
    :goto_44
    :try_start_5b
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_3a

    .line 870
    :goto_45
    :try_start_5c
    invoke-virtual/range {v87 .. v87}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3b

    .line 875
    :goto_46
    if-eqz v67, :cond_e

    .line 877
    :try_start_5d
    invoke-virtual/range {v67 .. v67}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3c

    .line 885
    :cond_e
    :goto_47
    if-eqz v74, :cond_f

    .line 886
    invoke-virtual/range {v74 .. v74}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 887
    const-string v3, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_f
    if-eqz v96, :cond_10

    .line 893
    :try_start_5e
    invoke-virtual/range {v96 .. v96}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_3d

    .line 900
    :cond_10
    :goto_48
    :try_start_5f
    invoke-virtual/range {v129 .. v129}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_3e

    .line 905
    :goto_49
    if-eqz v28, :cond_11

    .line 906
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 912
    :cond_11
    invoke-virtual/range {v129 .. v129}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v56

    .line 913
    .local v56, config:Landroid/content/res/Configuration;
    new-instance v89, Landroid/util/DisplayMetrics;

    invoke-direct/range {v89 .. v89}, Landroid/util/DisplayMetrics;-><init>()V

    .line 914
    .local v89, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v122

    check-cast v122, Landroid/view/WindowManager;

    .line 915
    .local v122, w:Landroid/view/WindowManager;
    invoke-interface/range {v122 .. v122}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v89

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 916
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v56

    move-object/from16 v1, v89

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 918
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 920
    :try_start_60
    invoke-interface/range {v100 .. v100}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3f

    .line 926
    :goto_4a
    move-object/from16 v17, v4

    .line 927
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 928
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 929
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 930
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 931
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v57

    .line 932
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v69

    .line 933
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v118

    .line 934
    .local v24, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v34, v112

    .line 935
    .local v34, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v25, v116

    .line 936
    .local v25, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v27, v44

    .line 937
    .local v27, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v29, v123

    .line 938
    .local v29, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v30, v79

    .line 939
    .local v30, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v26, v104

    .line 940
    .local v26, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v32, v85

    .line 941
    .local v32, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v33, v60

    .line 942
    .local v33, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v35, v94

    .line 943
    .local v35, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v36, v54

    .line 944
    .local v36, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v37, v114

    .line 945
    .local v37, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v31, v110

    .line 946
    .local v31, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v38, v71

    .line 947
    .local v38, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v39, v81

    .line 948
    .local v39, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v40, v50

    .line 955
    .local v40, bluetoothF:Landroid/server/BluetoothService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v40}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1069
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1070
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_12
    const-string v3, "SystemServer"

    const-string v9, "!@End of System ServerThread"

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1075
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    return-void

    .line 129
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v37           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v38           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v39           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v40           #bluetoothF:Landroid/server/BluetoothService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v46           #avrcp:Landroid/server/AvrcpStubService;
    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .end local v52           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v54           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #config:Landroid/content/res/Configuration;
    .end local v57           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v59           #contentService:Landroid/content/ContentService;
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v63           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .end local v65           #dEncService:Lcom/android/server/DirEncryptService;
    .end local v67           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v69           #dock:Lcom/android/server/DockObserver;
    .end local v71           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v74           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v76           #factoryTest:I
    .end local v77           #factoryTestStr:Ljava/lang/String;
    .end local v79           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v81           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v83           #lights:Lcom/android/server/LightsService;
    .end local v85           #location:Lcom/android/server/LocationManagerService;
    .end local v87           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v89           #metrics:Landroid/util/DisplayMetrics;
    .end local v94           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v96           #notification:Lcom/android/server/NotificationManagerService;
    .end local v100           #pm:Landroid/content/pm/IPackageManager;
    .end local v104           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v106           #serial:Lcom/android/server/SerialService;
    .end local v108           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v110           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v112           #throttle:Lcom/android/server/ThrottleService;
    .end local v114           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v116           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v118           #usb:Lcom/android/server/usb/UsbService;
    .end local v120           #vibrator:Lcom/android/server/VibratorService;
    .end local v122           #w:Landroid/view/WindowManager;
    .end local v123           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v125           #wifi:Lcom/android/server/WifiService;
    .end local v127           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v129           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_13
    const/16 v103, 0x0

    goto/16 :goto_0

    .line 135
    .restart local v103       #reboot:Z
    :cond_14
    const/16 v102, 0x0

    .restart local v102       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 143
    .end local v102           #reason:Ljava/lang/String;
    .end local v103           #reboot:Z
    .restart local v77       #factoryTestStr:Ljava/lang/String;
    :cond_15
    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v76

    goto/16 :goto_2

    .line 208
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    .restart local v52       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v54       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v57       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v59       #contentService:Landroid/content/ContentService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v63       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v65       #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v69       #dock:Lcom/android/server/DockObserver;
    .restart local v76       #factoryTest:I
    .restart local v81       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v83       #lights:Lcom/android/server/LightsService;
    .restart local v92       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v94       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v98       #onlyCore:Z
    .restart local v100       #pm:Landroid/content/pm/IPackageManager;
    .restart local v104       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v106       #serial:Lcom/android/server/SerialService;
    .restart local v108       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v112       #throttle:Lcom/android/server/ThrottleService;
    .restart local v116       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v118       #usb:Lcom/android/server/usb/UsbService;
    .restart local v120       #vibrator:Lcom/android/server/VibratorService;
    .restart local v125       #wifi:Lcom/android/server/WifiService;
    .restart local v127       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v129       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_16
    :try_start_61
    const-string v3, "1"

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/16 v98, 0x1

    goto/16 :goto_3

    .line 214
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 234
    .restart local v78       #firstBoot:Z
    :catch_0
    move-exception v73

    .line 235
    .local v73, e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v73

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_61} :catch_1

    goto/16 :goto_6

    .line 325
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v73           #e:Ljava/lang/Throwable;
    .end local v78           #firstBoot:Z
    .end local v98           #onlyCore:Z
    :catch_1
    move-exception v73

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v49

    .line 326
    .end local v49           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v73, e:Ljava/lang/RuntimeException;
    :goto_4c
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v73

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 239
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v73           #e:Ljava/lang/RuntimeException;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v78       #firstBoot:Z
    .restart local v98       #onlyCore:Z
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 249
    .end local v65           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v66       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_2
    move-exception v73

    .line 250
    .local v73, e:Ljava/lang/Throwable;
    :try_start_62
    const-string v3, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v73

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_62} :catch_5b

    .line 251
    const/16 v65, 0x0

    .end local v66           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v65       #dEncService:Lcom/android/server/DirEncryptService;
    goto/16 :goto_8

    .line 281
    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v49           #battery:Lcom/android/server/BatteryService;
    .end local v73           #e:Ljava/lang/Throwable;
    .end local v83           #lights:Lcom/android/server/LightsService;
    .end local v120           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v84       #lights:Lcom/android/server/LightsService;
    .restart local v121       #vibrator:Lcom/android/server/VibratorService;
    :cond_19
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_9

    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 295
    :cond_1b
    const/4 v3, 0x1

    move/from16 v0, v76

    if-ne v0, v3, :cond_1c

    .line 296
    :try_start_63
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 325
    :catch_3
    move-exception v73

    move-object/from16 v120, v121

    .end local v121           #vibrator:Lcom/android/server/VibratorService;
    .restart local v120       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v83, v84

    .end local v84           #lights:Lcom/android/server/LightsService;
    .restart local v83       #lights:Lcom/android/server/LightsService;
    goto :goto_4c

    .line 298
    .end local v83           #lights:Lcom/android/server/LightsService;
    .end local v120           #vibrator:Lcom/android/server/VibratorService;
    .restart local v84       #lights:Lcom/android/server/LightsService;
    .restart local v121       #vibrator:Lcom/android/server/VibratorService;
    :cond_1c
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v51, Landroid/server/BluetoothService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_63} :catch_3

    .line 300
    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .local v51, bluetooth:Landroid/server/BluetoothService;
    :try_start_64
    const-string v3, "bluetooth"

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 301
    invoke-virtual/range {v51 .. v51}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 303
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 304
    new-instance v53, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v53

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_64} :catch_5f

    .line 305
    .end local v52           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v53, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_65
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 307
    const-string v3, "SystemServer"

    const-string v9, "AvrcpStubService -->"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v47, Landroid/server/AvrcpStubService;

    move-object/from16 v0, v47

    invoke-direct {v0, v4}, Landroid/server/AvrcpStubService;-><init>(Landroid/content/Context;)V
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_65} :catch_60

    .line 309
    .end local v46           #avrcp:Landroid/server/AvrcpStubService;
    .local v47, avrcp:Landroid/server/AvrcpStubService;
    :try_start_66
    const-string v3, "bluetooth_avrcp"

    move-object/from16 v0, v47

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 310
    invoke-virtual/range {v51 .. v51}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_66} :catch_61

    move-object/from16 v46, v47

    .end local v47           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v46       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v52, v53

    .end local v53           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v52       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v50, v51

    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_b

    .line 351
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v78           #firstBoot:Z
    .end local v84           #lights:Lcom/android/server/LightsService;
    .end local v98           #onlyCore:Z
    .end local v121           #vibrator:Lcom/android/server/VibratorService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v67       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v71       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v74       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v79       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v83       #lights:Lcom/android/server/LightsService;
    .restart local v85       #location:Lcom/android/server/LocationManagerService;
    .restart local v87       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v96       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v110       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v114       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v120       #vibrator:Lcom/android/server/VibratorService;
    .restart local v123       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4
    move-exception v73

    .line 352
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 359
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v73

    .line 360
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 369
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v73

    .line 370
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "SystemServer"

    const-string v9, "Failure starting CustomFrequencyManagerService Service"

    move-object/from16 v0, v73

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 375
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v73

    .line 376
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 381
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v73

    .line 382
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 404
    .end local v73           #e:Ljava/lang/Throwable;
    .restart local v90       #mountService:Lcom/android/server/MountService;
    :catch_9
    move-exception v73

    .line 405
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 416
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v73

    .line 417
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 425
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v73

    .line 426
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 433
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v73

    .line 434
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 444
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v73

    .line 445
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v73

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 453
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v73

    .line 454
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 461
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v73

    .line 462
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 472
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v73

    .line 473
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 480
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v73

    .line 481
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 488
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v73

    .line 489
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 496
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v73

    .line 497
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 506
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v73

    move-object/from16 v8, v92

    .line 507
    .end local v92           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 514
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v73

    .line 515
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 522
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v73

    .line 523
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 535
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v73

    .line 536
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 544
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v73

    .line 545
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 553
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v73

    .line 554
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 561
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v73

    .line 562
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 579
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v73

    .line 580
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 586
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v73

    .line 587
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 595
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v73

    .line 596
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 603
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v73

    .line 604
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 611
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v73

    .line 612
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 619
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v73

    .line 620
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 627
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v73

    .line 628
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 635
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v73

    .line 636
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 647
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v73

    .line 648
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 656
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v73

    .line 657
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 665
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v73

    .line 666
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 673
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v73

    .line 674
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 682
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v73

    .line 683
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 691
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v73

    .line 692
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v73

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 699
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v73

    .line 700
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 707
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v73

    .line 708
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v73

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 715
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v73

    .line 716
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 722
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v73

    .line 723
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 729
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v73

    .line 730
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 741
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v73

    .line 742
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 748
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v73

    .line 749
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 758
    .end local v73           #e:Ljava/lang/Throwable;
    .restart local v99       #packageMgr:Landroid/content/pm/PackageManager;
    :catch_30
    move-exception v73

    .line 759
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting IRDA Service"

    move-object/from16 v0, v73

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a

    .line 769
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v73

    .line 770
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v73

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b

    .line 777
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v73

    .line 778
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_62
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 784
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v73

    .line 785
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v73

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .line 792
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v73

    .line 793
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 800
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v73

    .line 801
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "Fail to start face detection service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 808
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v73

    .line 809
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 819
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v73

    .line 820
    .restart local v73       #e:Ljava/lang/Throwable;
    :goto_63
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 829
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v73

    .line 830
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting BT FM Power Management Service"

    move-object/from16 v0, v73

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    .line 840
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v73

    .line 841
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting FM Radio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 858
    .end local v73           #e:Ljava/lang/Throwable;
    .end local v90           #mountService:Lcom/android/server/MountService;
    .end local v99           #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v28       #safeMode:Z
    :cond_1d
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_44

    .line 865
    :catch_3a
    move-exception v73

    .line 866
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 871
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v73

    .line 872
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 878
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_3c
    move-exception v73

    .line 879
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 894
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_3d
    move-exception v73

    .line 895
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 901
    .end local v73           #e:Ljava/lang/Throwable;
    :catch_3e
    move-exception v73

    .line 902
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 921
    .end local v73           #e:Ljava/lang/Throwable;
    .restart local v56       #config:Landroid/content/res/Configuration;
    .restart local v89       #metrics:Landroid/util/DisplayMetrics;
    .restart local v122       #w:Landroid/view/WindowManager;
    :catch_3f
    move-exception v73

    .line 922
    .restart local v73       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 222
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v28           #safeMode:Z
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v56           #config:Landroid/content/res/Configuration;
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v67           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v71           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v73           #e:Ljava/lang/Throwable;
    .end local v74           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v79           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v85           #location:Lcom/android/server/LocationManagerService;
    .end local v87           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v89           #metrics:Landroid/util/DisplayMetrics;
    .end local v96           #notification:Lcom/android/server/NotificationManagerService;
    .end local v110           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v114           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v122           #w:Landroid/view/WindowManager;
    .end local v123           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v78       #firstBoot:Z
    .restart local v92       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v98       #onlyCore:Z
    :catch_40
    move-exception v3

    goto/16 :goto_5

    .line 819
    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v49           #battery:Lcom/android/server/BatteryService;
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v78           #firstBoot:Z
    .end local v92           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v98           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v67       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v72       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v74       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v79       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v85       #location:Lcom/android/server/LocationManagerService;
    .restart local v87       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v90       #mountService:Lcom/android/server/MountService;
    .restart local v96       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v99       #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v110       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v114       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v123       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_41
    move-exception v73

    move-object/from16 v71, v72

    .end local v72           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v71       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_63

    .line 777
    .end local v54           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v55       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_42
    move-exception v73

    move-object/from16 v54, v55

    .end local v55           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v54       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_62

    .line 715
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v99           #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_43
    move-exception v73

    move-object/from16 v44, v45

    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_61

    .line 691
    .end local v106           #serial:Lcom/android/server/SerialService;
    .restart local v107       #serial:Lcom/android/server/SerialService;
    :catch_44
    move-exception v73

    move-object/from16 v106, v107

    .end local v107           #serial:Lcom/android/server/SerialService;
    .restart local v106       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_60

    .line 682
    .end local v118           #usb:Lcom/android/server/usb/UsbService;
    .restart local v119       #usb:Lcom/android/server/usb/UsbService;
    :catch_45
    move-exception v73

    move-object/from16 v118, v119

    .end local v119           #usb:Lcom/android/server/usb/UsbService;
    .restart local v118       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_5f

    .line 647
    .end local v123           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v124       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_46
    move-exception v73

    move-object/from16 v123, v124

    .end local v124           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v123       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_5e

    .line 619
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v61       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_47
    move-exception v73

    move-object/from16 v60, v61

    .end local v61           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_5d

    .line 611
    .end local v85           #location:Lcom/android/server/LocationManagerService;
    .restart local v86       #location:Lcom/android/server/LocationManagerService;
    :catch_48
    move-exception v73

    move-object/from16 v85, v86

    .end local v86           #location:Lcom/android/server/LocationManagerService;
    .restart local v85       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_5c

    .line 595
    .end local v96           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v97       #notification:Lcom/android/server/NotificationManagerService;
    :catch_49
    move-exception v73

    move-object/from16 v96, v97

    .end local v97           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v96       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_5b

    .line 553
    .end local v112           #throttle:Lcom/android/server/ThrottleService;
    .restart local v113       #throttle:Lcom/android/server/ThrottleService;
    :catch_4a
    move-exception v73

    move-object/from16 v112, v113

    .end local v113           #throttle:Lcom/android/server/ThrottleService;
    .restart local v112       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_5a

    .line 535
    .end local v57           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v58       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_4b
    move-exception v73

    move-object/from16 v57, v58

    .end local v58           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v57       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_59

    .line 522
    .end local v125           #wifi:Lcom/android/server/WifiService;
    .restart local v126       #wifi:Lcom/android/server/WifiService;
    :catch_4c
    move-exception v73

    move-object/from16 v125, v126

    .end local v126           #wifi:Lcom/android/server/WifiService;
    .restart local v125       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_58

    .line 514
    .end local v127           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v128       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_4d
    move-exception v73

    move-object/from16 v127, v128

    .end local v128           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v127       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_57

    .line 506
    :catch_4e
    move-exception v73

    goto/16 :goto_56

    .line 496
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v92       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v93       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_4f
    move-exception v73

    move-object/from16 v12, v93

    .end local v93           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_55

    .line 488
    .end local v114           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v115       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_50
    move-exception v73

    move-object/from16 v114, v115

    .end local v115           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v114       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_54

    .line 453
    .end local v110           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v111       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_51
    move-exception v73

    move-object/from16 v110, v111

    .end local v111           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v110       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_53

    .line 444
    .end local v74           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v75       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_52
    move-exception v73

    move-object/from16 v74, v75

    .end local v75           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v74       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_52

    .line 433
    .end local v67           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v68       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_53
    move-exception v73

    move-object/from16 v67, v68

    .end local v68           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v67       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_51

    .line 425
    .end local v87           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v88       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_54
    move-exception v73

    move-object/from16 v87, v88

    .end local v88           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v87       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_50

    .line 404
    .end local v90           #mountService:Lcom/android/server/MountService;
    .restart local v91       #mountService:Lcom/android/server/MountService;
    :catch_55
    move-exception v73

    move-object/from16 v90, v91

    .end local v91           #mountService:Lcom/android/server/MountService;
    .restart local v90       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_4f

    .line 390
    .end local v90           #mountService:Lcom/android/server/MountService;
    :catch_56
    move-exception v3

    goto/16 :goto_12

    .line 369
    .end local v63           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v64       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :catch_57
    move-exception v73

    move-object/from16 v63, v64

    .end local v64           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v63       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    goto/16 :goto_4e

    .line 351
    .end local v79           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v80       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_58
    move-exception v73

    move-object/from16 v79, v80

    .end local v80           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v79       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_4d

    .line 325
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v67           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v71           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v74           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v79           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v85           #location:Lcom/android/server/LocationManagerService;
    .end local v87           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v96           #notification:Lcom/android/server/NotificationManagerService;
    .end local v110           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v114           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v123           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v101       #power:Lcom/android/server/PowerManagerService;
    :catch_59
    move-exception v73

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v49

    .end local v49           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v101

    .end local v101           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_4c

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v42       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v78       #firstBoot:Z
    .restart local v98       #onlyCore:Z
    :catch_5a
    move-exception v73

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v49

    .end local v49           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v41, v42

    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_4c

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v65           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v66       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_5b
    move-exception v73

    move-object/from16 v65, v66

    .end local v66           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v65       #dEncService:Lcom/android/server/DirEncryptService;
    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v49

    .end local v49           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_4c

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v83           #lights:Lcom/android/server/LightsService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v84       #lights:Lcom/android/server/LightsService;
    :catch_5c
    move-exception v73

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v49

    .end local v49           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v83, v84

    .end local v84           #lights:Lcom/android/server/LightsService;
    .restart local v83       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4c

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v83           #lights:Lcom/android/server/LightsService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v84       #lights:Lcom/android/server/LightsService;
    :catch_5d
    move-exception v73

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v83, v84

    .end local v84           #lights:Lcom/android/server/LightsService;
    .restart local v83       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4c

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v83           #lights:Lcom/android/server/LightsService;
    .end local v120           #vibrator:Lcom/android/server/VibratorService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v84       #lights:Lcom/android/server/LightsService;
    .restart local v121       #vibrator:Lcom/android/server/VibratorService;
    :catch_5e
    move-exception v73

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v120, v121

    .end local v121           #vibrator:Lcom/android/server/VibratorService;
    .restart local v120       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v83, v84

    .end local v84           #lights:Lcom/android/server/LightsService;
    .restart local v83       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4c

    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .end local v83           #lights:Lcom/android/server/LightsService;
    .end local v120           #vibrator:Lcom/android/server/VibratorService;
    .restart local v51       #bluetooth:Landroid/server/BluetoothService;
    .restart local v84       #lights:Lcom/android/server/LightsService;
    .restart local v121       #vibrator:Lcom/android/server/VibratorService;
    :catch_5f
    move-exception v73

    move-object/from16 v50, v51

    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v120, v121

    .end local v121           #vibrator:Lcom/android/server/VibratorService;
    .restart local v120       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v83, v84

    .end local v84           #lights:Lcom/android/server/LightsService;
    .restart local v83       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4c

    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .end local v52           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v83           #lights:Lcom/android/server/LightsService;
    .end local v120           #vibrator:Lcom/android/server/VibratorService;
    .restart local v51       #bluetooth:Landroid/server/BluetoothService;
    .restart local v53       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v84       #lights:Lcom/android/server/LightsService;
    .restart local v121       #vibrator:Lcom/android/server/VibratorService;
    :catch_60
    move-exception v73

    move-object/from16 v52, v53

    .end local v53           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v52       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v50, v51

    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v120, v121

    .end local v121           #vibrator:Lcom/android/server/VibratorService;
    .restart local v120       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v83, v84

    .end local v84           #lights:Lcom/android/server/LightsService;
    .restart local v83       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4c

    .end local v46           #avrcp:Landroid/server/AvrcpStubService;
    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .end local v52           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v83           #lights:Lcom/android/server/LightsService;
    .end local v120           #vibrator:Lcom/android/server/VibratorService;
    .restart local v47       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v51       #bluetooth:Landroid/server/BluetoothService;
    .restart local v53       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v84       #lights:Lcom/android/server/LightsService;
    .restart local v121       #vibrator:Lcom/android/server/VibratorService;
    :catch_61
    move-exception v73

    move-object/from16 v46, v47

    .end local v47           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v46       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v52, v53

    .end local v53           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v52       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v50, v51

    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v120, v121

    .end local v121           #vibrator:Lcom/android/server/VibratorService;
    .restart local v120       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v83, v84

    .end local v84           #lights:Lcom/android/server/LightsService;
    .restart local v83       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4c

    .line 234
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v42       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    :catch_62
    move-exception v73

    move-object/from16 v41, v42

    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_4b

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v49           #battery:Lcom/android/server/BatteryService;
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v78           #firstBoot:Z
    .end local v98           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v67       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v71       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v74       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v79       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v85       #location:Lcom/android/server/LocationManagerService;
    .restart local v87       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v96       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v110       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v114       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v123       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1e
    move-object/from16 v8, v92

    .end local v92           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_43

    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v67           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v71           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v74           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v79           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v83           #lights:Lcom/android/server/LightsService;
    .end local v85           #location:Lcom/android/server/LocationManagerService;
    .end local v87           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v96           #notification:Lcom/android/server/NotificationManagerService;
    .end local v110           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v114           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v120           #vibrator:Lcom/android/server/VibratorService;
    .end local v123           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v51       #bluetooth:Landroid/server/BluetoothService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v78       #firstBoot:Z
    .restart local v84       #lights:Lcom/android/server/LightsService;
    .restart local v92       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v98       #onlyCore:Z
    .restart local v121       #vibrator:Lcom/android/server/VibratorService;
    :cond_1f
    move-object/from16 v50, v51

    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_b
.end method
