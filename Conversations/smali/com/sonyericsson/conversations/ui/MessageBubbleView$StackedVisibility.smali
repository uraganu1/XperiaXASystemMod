.class public final enum Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;
.super Ljava/lang/Enum;
.source "MessageBubbleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageBubbleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StackedVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

.field public static final enum GONE:Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

.field public static final enum INVISIBLE:Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

.field public static final enum USE_STACKED_STATUS:Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    const-string/jumbo v1, "INVISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->INVISIBLE:Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    .line 69
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    const-string/jumbo v1, "GONE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->GONE:Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    .line 70
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    const-string/jumbo v1, "USE_STACKED_STATUS"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->USE_STACKED_STATUS:Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->INVISIBLE:Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->GONE:Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->USE_STACKED_STATUS:Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->$VALUES:[Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->$VALUES:[Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    return-object v0
.end method
