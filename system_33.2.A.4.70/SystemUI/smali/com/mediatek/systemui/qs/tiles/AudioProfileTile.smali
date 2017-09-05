.class public Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AudioProfileTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$1;,
        Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$2;,
        Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$3;,
        Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$4;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic -com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

.field private static final ENABLE_AUDIO_PROFILE:Z


# instance fields
.field private mAudioProfileListenr:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private mAudioState:I

.field private mCurrentScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

.field private mDismissProfileSwitchDialogRunnable:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field private mMettingProfileIcon:Landroid/widget/ImageView;

.field private mMuteProfileIcon:Landroid/widget/ImageView;

.field private mNormalProfileIcon:Landroid/widget/ImageView;

.field private mOutdoorSwitchIcon:Landroid/widget/ImageView;

.field private mProfileKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mProfileSwitchDialog:Landroid/app/Dialog;

.field private mProfileSwitchListener:Landroid/view/View$OnClickListener;

.field private mUpdating:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->ENABLE_AUDIO_PROFILE:Z

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mUpdating:Z

    return v0
.end method

.method private static synthetic -getcom_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->removeAllProfileSwitchDialogCallbacks()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->showProfileSwitchDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->updateAudioProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)V
    .locals 0
    .param p1, "scenario"    # Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->updateProfileView(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isMtkAudioProfilesSupport()Z

    move-result v0

    .line 53
    sput-boolean v0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->ENABLE_AUDIO_PROFILE:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mUpdating:Z

    .line 75
    const v0, 0x7f020072

    iput v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mAudioState:I

    .line 207
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$1;

    invoke-direct {v0, p0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$1;-><init>(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchListener:Landroid/view/View$OnClickListener;

    .line 229
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$2;

    invoke-direct {v0, p0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$2;-><init>(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mAudioProfileListenr:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 309
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$3;

    invoke-direct {v0, p0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$3;-><init>(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mDismissProfileSwitchDialogRunnable:Ljava/lang/Runnable;

    .line 344
    new-instance v0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$4;

    invoke-direct {v0, p0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$4;-><init>(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mHandler:Landroid/os/Handler;

    .line 79
    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->createProfileSwitchDialog()V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->setAudioProfileUpdates(Z)V

    .line 77
    return-void
.end method

.method private createProfileSwitchDialog()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/high16 v13, 0x80000

    const/high16 v12, 0x20000

    const/4 v11, 0x1

    const v10, 0x7f0a003c

    .line 143
    const-string/jumbo v8, "AudioProfileTile"

    const-string/jumbo v9, "createProfileSwitchDialog"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput-object v14, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    .line 147
    new-instance v8, Landroid/app/Dialog;

    iget-object v9, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    .line 148
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    invoke-virtual {v8, v11}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 149
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v9, 0x7f040031

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 150
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    invoke-virtual {v8, v11}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 151
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7de

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 152
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 154
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->clearFlags(I)V

    .line 155
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v12, v12}, Landroid/view/Window;->setFlags(II)V

    .line 157
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v13, v13}, Landroid/view/Window;->setFlags(II)V

    .line 161
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v9, 0x7f1000e9

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 160
    iput-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mMettingProfileIcon:Landroid/widget/ImageView;

    .line 163
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v9, 0x7f1000ec

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 162
    iput-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mOutdoorSwitchIcon:Landroid/widget/ImageView;

    .line 165
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v9, 0x7f1000e6

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 164
    iput-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mMuteProfileIcon:Landroid/widget/ImageView;

    .line 167
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v9, 0x7f1000e3

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 166
    iput-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mNormalProfileIcon:Landroid/widget/ImageView;

    .line 169
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v9, 0x7f1000e2

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 171
    .local v4, "normalProfile":Landroid/view/View;
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v9, 0x7f1000e4

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 172
    .local v5, "normalProfileText":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mContext:Landroid/content/Context;

    const v9, 0x7f090054

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-static {v5, v10}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 174
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v8}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 177
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v9, 0x7f1000e5

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 179
    .local v2, "muteProfile":Landroid/view/View;
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v9, 0x7f1000e7

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 180
    .local v3, "muteProfileText":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mContext:Landroid/content/Context;

    const v9, 0x7f090056

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-static {v3, v10}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 182
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v8}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 185
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v9, 0x7f1000e8

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, "meetingProfile":Landroid/view/View;
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v9, 0x7f1000ea

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 188
    .local v1, "meetingProfileText":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mContext:Landroid/content/Context;

    const v9, 0x7f090055

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-static {v1, v10}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 190
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v8}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v9, 0x7f1000eb

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 195
    .local v6, "outdoorProfile":Landroid/view/View;
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    const v9, 0x7f1000ed

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 196
    .local v7, "outdoorProfileText":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mContext:Landroid/content/Context;

    const v9, 0x7f090057

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-static {v7, v10}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 198
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v8}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 201
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mCurrentScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    if-eqz v8, :cond_0

    .line 202
    const-string/jumbo v8, "AudioProfileTile"

    const-string/jumbo v9, "mCurrentScenario != null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v8, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mCurrentScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-direct {p0, v8}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->loadEnabledProfileResource(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)V

    .line 141
    :cond_0
    return-void
.end method

.method private dismissProfileSwitchDialog(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->removeAllProfileSwitchDialogCallbacks()V

    .line 304
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mDismissProfileSwitchDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    :cond_0
    return-void
.end method

.method private loadDisabledProfileResouceForAll()V
    .locals 2

    .prologue
    .line 262
    const-string/jumbo v0, "AudioProfileTile"

    const-string/jumbo v1, "loadDisabledProfileResouceForAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mNormalProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mMettingProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020081

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mOutdoorSwitchIcon:Landroid/widget/ImageView;

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mMuteProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    return-void
.end method

.method private loadEnabledProfileResource(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)V
    .locals 4
    .param p1, "scenario"    # Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .prologue
    const v3, 0x7f020072

    .line 272
    const-string/jumbo v0, "AudioProfileTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadEnabledProfileResource called, profile is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iput-object p1, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mCurrentScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .line 276
    invoke-static {}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-getcom_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 296
    :goto_0
    iput v3, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mAudioState:I

    .line 299
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->refreshState()V

    .line 270
    return-void

    .line 278
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mNormalProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    const v0, 0x7f02007a

    iput v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mAudioState:I

    goto :goto_1

    .line 282
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mMettingProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    const v0, 0x7f02007f

    iput v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mAudioState:I

    goto :goto_1

    .line 286
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mOutdoorSwitchIcon:Landroid/widget/ImageView;

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    const v0, 0x7f02008d

    iput v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mAudioState:I

    goto :goto_1

    .line 290
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mMuteProfileIcon:Landroid/widget/ImageView;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    const v0, 0x7f0200bb

    iput v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mAudioState:I

    goto :goto_1

    .line 294
    :pswitch_4
    iput v3, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mAudioState:I

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removeAllProfileSwitchDialogCallbacks()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mDismissProfileSwitchDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 321
    return-void
.end method

.method private showProfileSwitchDialog()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->createProfileSwitchDialog()V

    .line 135
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileSwitchDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 137
    const/16 v0, 0xfa0

    invoke-direct {p0, v0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->dismissProfileSwitchDialog(I)V

    .line 133
    :cond_0
    return-void
.end method

.method private updateAudioProfile(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 115
    return-void

    .line 118
    :cond_0
    const-string/jumbo v0, "AudioProfileTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAudioProfile called, selected profile is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-boolean v0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->ENABLE_AUDIO_PROFILE:Z

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 124
    :cond_1
    const-string/jumbo v0, "AudioProfileTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAudioProfile called, setActiveProfile is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method private updateProfileView(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)V
    .locals 2
    .param p1, "scenario"    # Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .prologue
    .line 254
    const-string/jumbo v0, "AudioProfileTile"

    const-string/jumbo v1, "updateProfileView before"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct {p0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->loadDisabledProfileResouceForAll()V

    .line 257
    invoke-direct {p0, p1}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->loadEnabledProfileResource(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)V

    .line 252
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0x6f

    return v0
.end method

.method protected handleClick()V
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2328

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 95
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    return-void
.end method

.method protected handleLongClick()V
    .locals 4

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    .line 101
    const-string/jumbo v2, "com.android.settings"

    .line 102
    const-string/jumbo v3, "com.android.settings.Settings$AudioProfileSettingsActivity"

    .line 100
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 110
    iget v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mAudioState:I

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 107
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 107
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setAudioProfileUpdates(Z)V
    .locals 3
    .param p1, "update"    # Z

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mUpdating:Z

    if-eq p1, v0, :cond_2

    .line 327
    sget-boolean v0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->ENABLE_AUDIO_PROFILE:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mContext:Landroid/content/Context;

    .line 329
    const-string/jumbo v1, "audioprofile"

    .line 328
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 330
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mAudioProfileListenr:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 331
    const/4 v2, 0x1

    .line 330
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 333
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileKeys:Ljava/util/List;

    .line 334
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getPredefinedProfileKeys()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileKeys:Ljava/util/List;

    .line 335
    iput-boolean p1, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mUpdating:Z

    .line 325
    :cond_1
    :goto_0
    return-void

    .line 337
    :cond_2
    sget-boolean v0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->ENABLE_AUDIO_PROFILE:Z

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 339
    iget-object v1, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->mAudioProfileListenr:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v2, 0x0

    .line 338
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 89
    return-void
.end method
