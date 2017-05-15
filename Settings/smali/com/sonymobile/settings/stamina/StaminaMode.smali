.class public Lcom/sonymobile/settings/stamina/StaminaMode;
.super Landroid/app/Fragment;
.source "StaminaMode.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/StaminaMode$StaminaActiveStateObserver;,
        Lcom/sonymobile/settings/stamina/StaminaMode$1;,
        Lcom/sonymobile/settings/stamina/StaminaMode$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;


# instance fields
.field private mActivation:Landroid/widget/LinearLayout;

.field private mActivationIcon:Landroid/widget/ImageView;

.field private mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

.field private mButtonAlwaysOnMode:Landroid/widget/RadioButton;

.field private mButtonAutoTurnOnMode:Landroid/widget/RadioButton;

.field private mButtonNeverMode:Landroid/widget/RadioButton;

.field private mLearnMore:Landroid/widget/TextView;

.field private mLinearAlwaysOnMode:Landroid/widget/LinearLayout;

.field private mLinearAutoTurnOnMode:Landroid/widget/LinearLayout;

.field private mLinearNeverMode:Landroid/widget/LinearLayout;

.field private mStaminaActiveStateObserver:Landroid/database/ContentObserver;

.field private mTextAutoTurnMode:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0()Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;
    .locals 1

    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaMode;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/settings/stamina/StaminaMode;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mTextAutoTurnMode:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/settings/stamina/StaminaMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaMode;->updateUi()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 268
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaMode$2;

    invoke-direct {v0}, Lcom/sonymobile/settings/stamina/StaminaMode$2;-><init>()V

    .line 267
    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 63
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaMode$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/StaminaMode$1;-><init>(Lcom/sonymobile/settings/stamina/StaminaMode;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    .line 37
    return-void
.end method

.method private updateUi()V
    .locals 5

    .prologue
    const v2, 0x3e851eb8    # 0.26f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getStaminaActiveState(Landroid/content/Context;)I

    move-result v0

    .line 221
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 247
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mActivation:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 248
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mActivationIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 249
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonAutoTurnOnMode:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 250
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonAlwaysOnMode:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 251
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonNeverMode:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 219
    :goto_0
    return-void

    .line 224
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mActivation:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 225
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mActivationIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 226
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonAutoTurnOnMode:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 227
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonAlwaysOnMode:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 228
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonNeverMode:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 232
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mActivation:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 233
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mActivationIcon:Landroid/widget/ImageView;

    const v2, 0x3f0a3d71    # 0.54f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 234
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonAutoTurnOnMode:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 235
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonAlwaysOnMode:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 236
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonNeverMode:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 240
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mActivation:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 241
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mActivationIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 242
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonAutoTurnOnMode:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 243
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonAlwaysOnMode:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 244
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonNeverMode:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 141
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaMode$8;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/StaminaMode$8;-><init>(Lcom/sonymobile/settings/stamina/StaminaMode;)V

    .line 150
    .local v0, "listner":Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;
    new-instance v1, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 151
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    .line 150
    invoke-direct {v1, v2, v3, v0, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;-><init>(Landroid/content/Context;Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;Landroid/os/Bundle;)V

    sput-object v1, Lcom/sonymobile/settings/stamina/StaminaMode;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    .line 137
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaMode$StaminaActiveStateObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/stamina/StaminaMode$StaminaActiveStateObserver;-><init>(Lcom/sonymobile/settings/stamina/StaminaMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mStaminaActiveStateObserver:Landroid/database/ContentObserver;

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 83
    const v2, 0x7f04010e

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f130217

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mLinearAutoTurnOnMode:Landroid/widget/LinearLayout;

    .line 85
    const v2, 0x7f13021c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mLinearAlwaysOnMode:Landroid/widget/LinearLayout;

    .line 86
    const v2, 0x7f13021f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mLinearNeverMode:Landroid/widget/LinearLayout;

    .line 87
    const v2, 0x7f130218

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonAutoTurnOnMode:Landroid/widget/RadioButton;

    .line 88
    const v2, 0x7f13021d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonAlwaysOnMode:Landroid/widget/RadioButton;

    .line 89
    const v2, 0x7f130220

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonNeverMode:Landroid/widget/RadioButton;

    .line 90
    const v2, 0x7f130219

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mTextAutoTurnMode:Landroid/widget/TextView;

    .line 91
    const v2, 0x7f13021a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mActivation:Landroid/widget/LinearLayout;

    .line 92
    const v2, 0x7f13021b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mActivationIcon:Landroid/widget/ImageView;

    .line 93
    const v2, 0x7f130224

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mLearnMore:Landroid/widget/TextView;

    .line 95
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 97
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mLinearAutoTurnOnMode:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sonymobile/settings/stamina/StaminaMode$3;

    invoke-direct {v3, p0, v0}, Lcom/sonymobile/settings/stamina/StaminaMode$3;-><init>(Lcom/sonymobile/settings/stamina/StaminaMode;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mLinearAlwaysOnMode:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sonymobile/settings/stamina/StaminaMode$4;

    invoke-direct {v3, p0, v0}, Lcom/sonymobile/settings/stamina/StaminaMode$4;-><init>(Lcom/sonymobile/settings/stamina/StaminaMode;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mLinearNeverMode:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sonymobile/settings/stamina/StaminaMode$5;

    invoke-direct {v3, p0, v0}, Lcom/sonymobile/settings/stamina/StaminaMode$5;-><init>(Lcom/sonymobile/settings/stamina/StaminaMode;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mActivation:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sonymobile/settings/stamina/StaminaMode$6;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/stamina/StaminaMode$6;-><init>(Lcom/sonymobile/settings/stamina/StaminaMode;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mLearnMore:Landroid/widget/TextView;

    new-instance v3, Lcom/sonymobile/settings/stamina/StaminaMode$7;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/stamina/StaminaMode$7;-><init>(Lcom/sonymobile/settings/stamina/StaminaMode;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 197
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mLinearAutoTurnOnMode:Landroid/widget/LinearLayout;

    .line 198
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mLinearAlwaysOnMode:Landroid/widget/LinearLayout;

    .line 199
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mLinearNeverMode:Landroid/widget/LinearLayout;

    .line 200
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonAutoTurnOnMode:Landroid/widget/RadioButton;

    .line 201
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonAlwaysOnMode:Landroid/widget/RadioButton;

    .line 202
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mButtonNeverMode:Landroid/widget/RadioButton;

    .line 203
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mTextAutoTurnMode:Landroid/widget/TextView;

    .line 204
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mActivation:Landroid/widget/LinearLayout;

    .line 205
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mActivationIcon:Landroid/widget/ImageView;

    .line 206
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mLearnMore:Landroid/widget/TextView;

    .line 207
    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mStaminaActiveStateObserver:Landroid/database/ContentObserver;

    .line 208
    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaMode;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->onDetach()V

    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v0, "intentGa":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.SUPER_STAMINA_GA_SCREEN_CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string/jumbo v1, "screen"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 216
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 196
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 191
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mStaminaActiveStateObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mStaminaActiveStateObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 182
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 178
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.sonymobile.superstamina"

    const-string/jumbo v3, "com.sonymobile.superstamina.ga.GaObserverService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string/jumbo v2, "root"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 169
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 170
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mStaminaActiveStateObserver:Landroid/database/ContentObserver;

    .line 169
    invoke-static {v2, v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerStaminaActiveStateObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 171
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    invoke-interface {v2}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;->getValue()I

    move-result v1

    .line 172
    .local v1, "threshould":I
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaMode;->mTextAutoTurnMode:Landroid/widget/TextView;

    .line 173
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0b0c4c

    invoke-virtual {v3, v5, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaMode;->updateUi()V

    .line 161
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaMode;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 155
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 186
    return-void
.end method
