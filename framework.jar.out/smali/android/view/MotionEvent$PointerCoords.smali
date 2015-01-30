.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field public SumSize:F

.field public angle:F

.field public eccen:F

.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public palm:F

.field public pressure:F

.field public size:F

.field public surfaceMajor:F

.field public surfaceMinor:F

.field public surfaceSize:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3441
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3442
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0
    .parameter "other"

    .prologue
    .line 3450
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3451
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 3452
    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3
    .parameter "size"

    .prologue
    .line 3456
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 3457
    .local v0, array:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 3458
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 3457
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3460
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3578
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3580
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3581
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3582
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3583
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3584
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3585
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3586
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3587
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3588
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3590
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->SumSize:F

    .line 3593
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->angle:F

    .line 3594
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->eccen:F

    .line 3596
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 8
    .parameter "other"

    .prologue
    const/4 v7, 0x0

    .line 3604
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3605
    .local v0, bits:J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3606
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_2

    .line 3607
    iget-object v3, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3608
    .local v3, otherValues:[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    .line 3609
    .local v2, count:I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3610
    .local v4, values:[F
    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v2, v5, :cond_1

    .line 3611
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 3612
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3614
    :cond_1
    invoke-static {v3, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3617
    .end local v2           #count:I
    .end local v3           #otherValues:[F
    .end local v4           #values:[F
    :cond_2
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3618
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3619
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3620
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3621
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3622
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3623
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3624
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3625
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3639
    const-string/jumbo v5, "ro.revision"

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_3

    .line 3652
    :cond_3
    return-void
.end method

.method public getAxisValue(I)F
    .locals 11
    .parameter "axis"

    .prologue
    const-wide/16 v9, 0x1

    .line 3664
    sparse-switch p1, :sswitch_data_0

    .line 3705
    if-ltz p1, :cond_0

    const/16 v5, 0x3f

    if-le p1, v5, :cond_1

    .line 3706
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Axis out of range."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3666
    :sswitch_0
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3714
    :goto_0
    return v5

    .line 3668
    :sswitch_1
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_0

    .line 3670
    :sswitch_2
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_0

    .line 3672
    :sswitch_3
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_0

    .line 3674
    :sswitch_4
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_0

    .line 3676
    :sswitch_5
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_0

    .line 3678
    :sswitch_6
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_0

    .line 3680
    :sswitch_7
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_0

    .line 3682
    :sswitch_8
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_0

    .line 3685
    :sswitch_9
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceSize:F

    goto :goto_0

    .line 3687
    :sswitch_a
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMajor:F

    goto :goto_0

    .line 3689
    :sswitch_b
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMinor:F

    goto :goto_0

    .line 3691
    :sswitch_c
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->angle:F

    goto :goto_0

    .line 3693
    :sswitch_d
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    goto :goto_0

    .line 3698
    :sswitch_e
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->SumSize:F

    goto :goto_0

    .line 3702
    :sswitch_f
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->eccen:F

    goto :goto_0

    .line 3708
    :cond_1
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3709
    .local v2, bits:J
    shl-long v0, v9, p1

    .line 3710
    .local v0, axisBit:J
    and-long v5, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 3711
    const/4 v5, 0x0

    goto :goto_0

    .line 3713
    :cond_2
    sub-long v5, v0, v9

    and-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3714
    .local v4, index:I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    goto :goto_0

    .line 3664
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x30 -> :sswitch_9
        0x31 -> :sswitch_a
        0x32 -> :sswitch_b
        0x33 -> :sswitch_c
        0x34 -> :sswitch_d
        0x35 -> :sswitch_f
        0x36 -> :sswitch_e
    .end sparse-switch
.end method

.method public setAxisValue(IF)V
    .locals 13
    .parameter "axis"
    .parameter "value"

    .prologue
    const-wide/16 v9, 0x1

    const/4 v12, 0x0

    .line 3729
    sparse-switch p1, :sswitch_data_0

    .line 3784
    :goto_0
    if-ltz p1, :cond_0

    const/16 v8, 0x3f

    if-le p1, v8, :cond_1

    .line 3785
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Axis out of range."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3731
    :sswitch_0
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3816
    :goto_1
    return-void

    .line 3734
    :sswitch_1
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_1

    .line 3737
    :sswitch_2
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_1

    .line 3740
    :sswitch_3
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_1

    .line 3743
    :sswitch_4
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_1

    .line 3746
    :sswitch_5
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_1

    .line 3749
    :sswitch_6
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_1

    .line 3752
    :sswitch_7
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_1

    .line 3755
    :sswitch_8
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_1

    .line 3759
    :sswitch_9
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceSize:F

    goto :goto_1

    .line 3762
    :sswitch_a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMajor:F

    goto :goto_1

    .line 3765
    :sswitch_b
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMinor:F

    goto :goto_1

    .line 3768
    :sswitch_c
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->angle:F

    goto :goto_1

    .line 3771
    :sswitch_d
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    goto :goto_1

    .line 3777
    :sswitch_e
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->SumSize:F

    .line 3781
    :sswitch_f
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->eccen:F

    goto :goto_0

    .line 3787
    :cond_1
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3788
    .local v2, bits:J
    shl-long v0, v9, p1

    .line 3789
    .local v0, axisBit:J
    sub-long v8, v0, v9

    and-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    .line 3790
    .local v5, index:I
    iget-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3791
    .local v7, values:[F
    and-long v8, v2, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 3792
    if-nez v7, :cond_4

    .line 3793
    const/16 v8, 0x8

    new-array v7, v8, [F

    .line 3794
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3811
    :cond_2
    :goto_2
    or-long v8, v2, v0

    iput-wide v8, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3813
    :cond_3
    aput p2, v7, v5

    goto :goto_1

    .line 3796
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3797
    .local v4, count:I
    array-length v8, v7

    if-ge v4, v8, :cond_5

    .line 3798
    if-eq v5, v4, :cond_2

    .line 3799
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 3803
    :cond_5
    mul-int/lit8 v8, v4, 0x2

    new-array v6, v8, [F

    .line 3804
    .local v6, newValues:[F
    invoke-static {v7, v12, v6, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3805
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3807
    move-object v7, v6

    .line 3808
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_2

    .line 3729
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x30 -> :sswitch_9
        0x31 -> :sswitch_a
        0x32 -> :sswitch_b
        0x33 -> :sswitch_c
        0x34 -> :sswitch_d
        0x35 -> :sswitch_f
        0x36 -> :sswitch_e
    .end sparse-switch
.end method
