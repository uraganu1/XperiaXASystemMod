.class public Lcom/android/incallui/SomcUiProcessStartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SomcUiProcessStartReceiver.java"


# static fields
.field static sHasLaunchedProcessBefore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/SomcUiProcessStartReceiver;->sHasLaunchedProcessBefore:Z

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private doPreload(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 39
    const-string/jumbo v4, "dummyString"

    invoke-static {v4}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "sha1_hash":Ljava/lang/String;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04001f

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 46
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f040050

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 47
    const v4, 0x7f040003

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 48
    const v4, 0x7f040053

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 49
    const v4, 0x7f040039

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 50
    const v4, 0x7f040046

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 51
    const v4, 0x7f040045

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 54
    const v5, 0x7f0200cb

    .line 53
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 37
    .local v2, "tempDraw":Landroid/graphics/drawable/Drawable;
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    sget-boolean v0, Lcom/android/incallui/SomcUiProcessStartReceiver;->sHasLaunchedProcessBefore:Z

    if-nez v0, :cond_0

    .line 25
    const-string/jumbo v0, "onReceive, doPreload"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/android/incallui/SomcUiProcessStartReceiver;->doPreload(Landroid/content/Context;)V

    .line 29
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/SomcUiProcessStartReceiver;->sHasLaunchedProcessBefore:Z

    .line 23
    return-void
.end method
