.class public final enum Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;
.super Ljava/lang/Enum;
.source "SomcCallWidgetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcCallWidgetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WidgetMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

.field public static final enum AFTERCALL:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

.field public static final enum CALLING:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

.field public static final enum DISABLED:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

.field public static final enum INCALL:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

.field public static final enum INCOMING:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->DISABLED:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    new-instance v0, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    const-string/jumbo v1, "CALLING"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->CALLING:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    new-instance v0, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    const-string/jumbo v1, "INCOMING"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->INCOMING:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    new-instance v0, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    const-string/jumbo v1, "INCALL"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->INCALL:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    new-instance v0, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    const-string/jumbo v1, "AFTERCALL"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->AFTERCALL:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    sget-object v1, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->DISABLED:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->CALLING:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->INCOMING:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->INCALL:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->AFTERCALL:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->$VALUES:[Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->$VALUES:[Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    return-object v0
.end method
