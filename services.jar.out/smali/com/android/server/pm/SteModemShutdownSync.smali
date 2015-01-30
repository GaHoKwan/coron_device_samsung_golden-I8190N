.class Lcom/android/server/pm/SteModemShutdownSync;
.super Ljava/lang/Object;
.source "ShutdownThreadFeature.java"


# instance fields
.field public isRadioOn:Z

.field public useFallback:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/android/server/pm/SteModemShutdownSync;->useFallback:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/server/pm/SteModemShutdownSync;->isRadioOn:Z

    return-void
.end method
