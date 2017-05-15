.class public final Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;
.super Landroid/app/DialogFragment;
.source "WfdSinkSurfaceFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;,
        Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;,
        Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$KeyCodeConverter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCountdownShowing:Z

.field private mDialog:Landroid/app/Dialog;

.field private mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;

.field private mGuideShowing:Z

.field private mLatinCharTest:Z

.field private mOrientationBak:I

.field private mSinkView:Landroid/view/SurfaceView;

.field private mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

.field private mSurfaceShowing:Z

.field private mTestLatinChar:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mCountdownShowing:Z

    return v0
.end method

.method static synthetic -get2(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkExt;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mGuideShowing:Z

    return v0
.end method

.method static synthetic -get4(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mLatinCharTest:Z

    return v0
.end method

.method static synthetic -get5(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    return-object v0
.end method

.method static synthetic -get7(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mTestLatinChar:I

    return v0
.end method

.method static synthetic -set0(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkView:Landroid/view/SurfaceView;

    return-object p1
.end method

.method static synthetic -set1(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    return-object p1
.end method

.method static synthetic -set2(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mTestLatinChar:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "countdownNum"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->addCountdownView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->disconnect()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->removeCountDown()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->removeWfdSinkGuide()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;I)V
    .locals 0
    .param p1, "systemUi"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->requestFullScreen(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 76
    iput-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSurfaceShowing:Z

    .line 77
    iput-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mGuideShowing:Z

    .line 78
    iput-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mCountdownShowing:Z

    .line 81
    const/16 v0, -0x64

    iput v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mOrientationBak:I

    .line 83
    iput-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mLatinCharTest:Z

    .line 84
    const/16 v0, 0xa0

    iput v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mTestLatinChar:I

    .line 89
    return-void
.end method

.method private addCountdownView(Ljava/lang/String;)V
    .locals 6
    .param p1, "countdownNum"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f130290

    .line 187
    iget-boolean v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mCountdownShowing:Z

    if-eqz v2, :cond_0

    .line 188
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 190
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 191
    const v3, 0x7f04014b

    const/4 v4, 0x0

    .line 190
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 192
    .local v0, "countdownView":Landroid/view/ViewGroup;
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 194
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v2, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->addView(Landroid/view/View;)V

    .line 196
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v2, v5, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setTag(ILjava/lang/Object;)V

    .line 197
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mCountdownShowing:Z

    .line 186
    return-void
.end method

.method private disconnect()V
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSurfaceShowing:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;

    invoke-virtual {v0}, Lcom/mediatek/settings/wfd/WfdSinkExt;->disconnectWfdSinkConnection()V

    .line 128
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSurfaceShowing:Z

    .line 129
    iget-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mGuideShowing:Z

    if-eqz v0, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->removeWfdSinkGuide()V

    .line 124
    :cond_1
    return-void
.end method

.method private removeCountDown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f130290

    .line 201
    iget-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mCountdownShowing:Z

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 204
    .local v0, "countdownView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->removeView(Landroid/view/View;)V

    .line 206
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setTag(ILjava/lang/Object;)V

    .line 209
    .end local v0    # "countdownView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mCountdownShowing:Z

    .line 200
    return-void
.end method

.method private removeWfdSinkGuide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0b009d

    .line 174
    iget-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mGuideShowing:Z

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 177
    .local v0, "guide":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->removeView(Landroid/view/View;)V

    .line 179
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setTag(ILjava/lang/Object;)V

    .line 182
    .end local v0    # "guide":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->-wrap1(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Z)V

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mGuideShowing:Z

    .line 173
    return-void
.end method

.method private requestFullScreen(I)V
    .locals 6
    .param p1, "systemUi"    # I

    .prologue
    .line 332
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 333
    or-int/lit8 p1, p1, 0x2

    .line 335
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 336
    or-int/lit8 p1, p1, 0x4

    .line 338
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 339
    or-int/lit16 p1, p1, 0x5000

    .line 342
    :cond_2
    move v0, p1

    .line 343
    .local v0, "newUiOptions":I
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    new-instance v2, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$2;-><init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;I)V

    .line 351
    const-wide/16 v4, 0x1f4

    .line 343
    invoke-virtual {v1, v2, v4, v5}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 331
    return-void
.end method


# virtual methods
.method public addWfdSinkGuide()V
    .locals 9

    .prologue
    const v8, 0x7f0b009d

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 150
    iget-boolean v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mGuideShowing:Z

    if-eqz v3, :cond_0

    .line 151
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 154
    const v4, 0x7f04014c

    const/4 v5, 0x0

    .line 153
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 155
    .local v1, "guide":Landroid/view/ViewGroup;
    const v3, 0x7f130295

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 156
    .local v0, "btn":Landroid/widget/Button;
    new-instance v3, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$1;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$1;-><init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v3, 0x7f130294

    .line 163
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 165
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 166
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 165
    invoke-virtual {v3, v8, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v3, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->addView(Landroid/view/View;)V

    .line 168
    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v3, v8, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setTag(ILjava/lang/Object;)V

    .line 169
    iget-object v3, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-static {v3, v6}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->-wrap1(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Z)V

    .line 170
    iput-boolean v7, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mGuideShowing:Z

    .line 149
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    if-nez p1, :cond_0

    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mActivity:Landroid/app/Activity;

    .line 102
    new-instance v0, Lcom/mediatek/settings/wfd/WfdSinkExt;

    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;

    .line 103
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;

    invoke-virtual {v0, p0}, Lcom/mediatek/settings/wfd/WfdSinkExt;->registerSinkFragment(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V

    .line 104
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->setShowsDialog(Z)V

    .line 93
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@M_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bundle is not null, recreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->dismissAllowingStateLoss()V

    .line 98
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 99
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@M_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDialog is null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string/jumbo v0, "wfd.uibc.latintest"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mLatinCharTest:Z

    .line 140
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;

    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$FullScreenDialog;-><init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mDialog:Landroid/app/Dialog;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mDialog:Landroid/app/Dialog;

    return-object v0

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@M_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onLongClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->dismissAllowingStateLoss()V

    .line 664
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 665
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@M_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 112
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;

    invoke-virtual {v0}, Lcom/mediatek/settings/wfd/WfdSinkExt;->onStart()V

    .line 109
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@M_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;

    invoke-virtual {v0}, Lcom/mediatek/settings/wfd/WfdSinkExt;->onStop()V

    .line 119
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->dismissAllowingStateLoss()V

    .line 120
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 121
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 116
    return-void
.end method

.method public requestOrientation(Z)V
    .locals 2
    .param p1, "isPortrait"    # Z

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mOrientationBak:I

    .line 220
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mActivity:Landroid/app/Activity;

    .line 221
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 220
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 218
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreOrientation()V
    .locals 2

    .prologue
    .line 229
    iget v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mOrientationBak:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mOrientationBak:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 228
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "@M_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "surface changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-virtual {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getSystemUiVisibility()I

    move-result v0

    .line 639
    .local v0, "systemUiVis":I
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSinkViewLayout:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->-get0(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 641
    invoke-direct {p0, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->requestFullScreen(I)V

    .line 636
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@M_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "surface created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSurfaceShowing:Z

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/wfd/WfdSinkExt;->setupWfdSinkConnection(Landroid/view/Surface;)V

    .line 651
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mSurfaceShowing:Z

    .line 646
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@M_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "surface destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->disconnect()V

    .line 655
    return-void
.end method
