.class abstract enum Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;
.super Ljava/lang/Enum;
.source "ClockPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Motion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion$1;,
        Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion$2;,
        Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion$3;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

.field public static final enum DRAG:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

.field public static final enum FLING_LEFT:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

.field public static final enum FLING_RIGHT:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 402
    new-instance v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion$1;

    const-string/jumbo v1, "FLING_RIGHT"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion$1;-><init>(Ljava/lang/String;I)V

    .line 405
    sput-object v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;->FLING_RIGHT:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    .line 412
    new-instance v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion$2;

    const-string/jumbo v1, "FLING_LEFT"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion$2;-><init>(Ljava/lang/String;I)V

    .line 415
    sput-object v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;->FLING_LEFT:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    .line 422
    new-instance v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion$3;

    const-string/jumbo v1, "DRAG"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion$3;-><init>(Ljava/lang/String;I)V

    .line 425
    sput-object v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;->DRAG:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    .line 401
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    sget-object v1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;->FLING_RIGHT:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;->FLING_LEFT:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;->DRAG:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;->$VALUES:[Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 401
    const-class v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;->$VALUES:[Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;

    return-object v0
.end method


# virtual methods
.method public abstract getModifiedScrollPosition(II)I
.end method
