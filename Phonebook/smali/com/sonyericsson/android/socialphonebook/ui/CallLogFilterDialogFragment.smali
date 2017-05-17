.class public Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;
.super Landroid/app/DialogFragment;
.source "CallLogFilterDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;
    }
.end annotation


# static fields
.field private static final CURRENT_STATE_KEY:Ljava/lang/String; = "dialog_current_state_key"

.field public static final DEFAULT_SETTING:I

.field private static final SHOULD_DISPLAY_VOICEMAIL:Ljava/lang/String; = "shouldDisplayVoicemail"


# instance fields
.field private mCurrentState:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mNextState:I

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mShouldDisplayVoicemail:Z

.field private mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mNextState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->isFilterStateChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->saveNewPreferencesState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ALL_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->DEFAULT_SETTING:I

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mShouldDisplayVoicemail:Z

    .line 32
    return-void
.end method

.method private getFilterItems()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 153
    const v4, 0x7f0c0006

    .line 152
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "filterItemsArray":[Ljava/lang/String;
    const v3, 0x7f090388

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "voicemailFilter":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 161
    .local v1, "filterItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-interface {v4}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallFilterVisibility()Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 163
    const v3, 0x7f09036d

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const v3, 0x7f09036e

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mShouldDisplayVoicemail:Z

    if-nez v3, :cond_1

    .line 168
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 171
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method private isFilterStateChanged()Z
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mCurrentState:I

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mNextState:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Z)Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;
    .locals 3
    .param p0, "shouldDisplayVoicemail"    # Z

    .prologue
    .line 77
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;-><init>()V

    .line 78
    .local v1, "dialogFragment":Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "shouldDisplayVoicemail"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    return-object v1
.end method

.method private readOldPreference(I)I
    .locals 2
    .param p1, "defaultState"    # I

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    .local v0, "oldPrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "call_log_filter"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private saveNewPreferencesState()V
    .locals 3

    .prologue
    .line 176
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 177
    .local v0, "sharedPrefEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "call_log_filter"

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mNextState:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 89
    const-string/jumbo v1, "shouldDisplayVoicemail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mShouldDisplayVoicemail:Z

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 93
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "call_log_filter"

    .line 94
    sget v3, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->DEFAULT_SETTING:I

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->readOldPreference(I)I

    move-result v3

    .line 93
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mCurrentState:I

    .line 95
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mCurrentState:I

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mNextState:I

    .line 97
    if-eqz p1, :cond_1

    .line 98
    const-string/jumbo v1, "dialog_current_state_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mNextState:I

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 85
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090235

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 122
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->getFilterItems()[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mCurrentState:I

    .line 123
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;)V

    .line 119
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 131
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$2;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;)V

    .line 130
    const v3, 0x7f090236

    .line 119
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 140
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$3;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;)V

    const v3, 0x7f090129

    .line 119
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mDialog:Landroid/app/AlertDialog;

    .line 148
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    const-string/jumbo v0, "dialog_current_state_key"

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->mNextState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    return-void
.end method
