.class final enum Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;
.super Ljava/lang/Enum;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/camera/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CameraState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

.field public static final enum CloseAfterOpened:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

.field public static final enum Closed:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

.field public static final enum Closing:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

.field public static final enum Open:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

.field public static final enum OpenAfterClosed:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

.field public static final enum Opening:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    const-string/jumbo v1, "Open"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Open:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    new-instance v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    const-string/jumbo v1, "Opening"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Opening:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    new-instance v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    const-string/jumbo v1, "CloseAfterOpened"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->CloseAfterOpened:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    new-instance v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    const-string/jumbo v1, "Closed"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Closed:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    new-instance v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    const-string/jumbo v1, "Closing"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Closing:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    new-instance v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    const-string/jumbo v1, "OpenAfterClosed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->OpenAfterClosed:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    .line 64
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Open:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Opening:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->CloseAfterOpened:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Closed:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Closing:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->OpenAfterClosed:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->$VALUES:[Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->$VALUES:[Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    return-object v0
.end method
