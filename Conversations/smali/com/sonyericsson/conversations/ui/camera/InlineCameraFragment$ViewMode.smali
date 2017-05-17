.class final enum Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;
.super Ljava/lang/Enum;
.source "InlineCameraFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

.field public static final enum ACCEPT_PICTURE:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

.field public static final enum TAKING_PICTURE:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-instance v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    const-string/jumbo v1, "TAKING_PICTURE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->TAKING_PICTURE:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    .line 119
    new-instance v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    const-string/jumbo v1, "ACCEPT_PICTURE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->ACCEPT_PICTURE:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->TAKING_PICTURE:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->ACCEPT_PICTURE:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->$VALUES:[Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    const-class v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;->$VALUES:[Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$ViewMode;

    return-object v0
.end method
