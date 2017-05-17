.class final enum Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;
.super Ljava/lang/Enum;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/movablepanes/paneview/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TouchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

.field public static final enum CLICKED:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

.field public static final enum DRAGGING_HORIZONTALLY:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

.field public static final enum DRAGGING_VERTICALLY:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

.field public static final enum LONGPRESSED:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

.field public static final enum NON_ACTIVE_DRAG:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

.field public static final enum RESTING:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    const-string/jumbo v1, "RESTING"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->RESTING:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    .line 27
    new-instance v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    const-string/jumbo v1, "CLICKED"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    .line 28
    sput-object v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->CLICKED:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    .line 30
    new-instance v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    const-string/jumbo v1, "LONGPRESSED"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->LONGPRESSED:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    .line 33
    new-instance v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    const-string/jumbo v1, "DRAGGING_HORIZONTALLY"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_HORIZONTALLY:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    .line 36
    new-instance v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    const-string/jumbo v1, "DRAGGING_VERTICALLY"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_VERTICALLY:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    .line 39
    new-instance v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    const-string/jumbo v1, "NON_ACTIVE_DRAG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->NON_ACTIVE_DRAG:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    sget-object v1, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->RESTING:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->CLICKED:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->LONGPRESSED:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_HORIZONTALLY:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->DRAGGING_VERTICALLY:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->NON_ACTIVE_DRAG:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->$VALUES:[Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->$VALUES:[Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    return-object v0
.end method
