.class final enum Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;
.super Ljava/lang/Enum;
.source "VolumeSeekBarUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AudioStream"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

.field public static final enum alarm:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

.field public static final enum music:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

.field public static final enum notification:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

.field public static final enum ring:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;


# instance fields
.field private final mAudioManagerValue:I


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;)I
    .locals 1

    iget v0, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;->mAudioManagerValue:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 30
    new-instance v0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    const-string/jumbo v1, "music"

    invoke-direct {v0, v1, v5, v4}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;->music:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    .line 31
    new-instance v0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    const-string/jumbo v1, "alarm"

    invoke-direct {v0, v1, v6, v7}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;->alarm:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    .line 32
    new-instance v0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    const-string/jumbo v1, "ring"

    invoke-direct {v0, v1, v3, v3}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;->ring:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    .line 33
    new-instance v0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    const-string/jumbo v1, "notification"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;->notification:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    .line 29
    new-array v0, v7, [Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    sget-object v1, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;->music:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;->alarm:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;->ring:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;->notification:Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;->$VALUES:[Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "audioManageValue"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;->mAudioManagerValue:I

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;->$VALUES:[Lcom/sonymobile/settings/preference/util/VolumeSeekBarUtil$AudioStream;

    return-object v0
.end method
