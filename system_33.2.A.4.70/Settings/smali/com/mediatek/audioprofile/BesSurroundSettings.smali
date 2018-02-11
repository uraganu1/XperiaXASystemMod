.class public Lcom/mediatek/audioprofile/BesSurroundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BesSurroundSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/mediatek/audioprofile/BesSurroundItem$OnClickListener;


# instance fields
.field private mMovieMode:Lcom/mediatek/audioprofile/BesSurroundItem;

.field private mMusicMode:Lcom/mediatek/audioprofile/BesSurroundItem;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initBesSurroundStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getBesSurroundState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/BesSurroundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getBesSurroundMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMovieMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    invoke-virtual {v0, v3}, Lcom/mediatek/audioprofile/BesSurroundItem;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMusicMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/BesSurroundItem;->setChecked(Z)V

    .line 80
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMovieMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/BesSurroundItem;->setChecked(Z)V

    .line 88
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMusicMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    invoke-virtual {v0, v3}, Lcom/mediatek/audioprofile/BesSurroundItem;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public createSwitch()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/BesSurroundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 56
    const v3, 0x8070018

    const/4 v4, 0x0

    .line 55
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mSwitch:Landroid/widget/Switch;

    .line 57
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/BesSurroundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 58
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 59
    const v3, 0x7f0c0034

    .line 58
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 60
    .local v1, "padding":I
    iget-object v2, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5, v5, v1, v5}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 61
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 64
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mSwitch:Landroid/widget/Switch;

    .line 66
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    .line 69
    const v5, 0x800015

    .line 66
    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 64
    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 70
    iget-object v2, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    const v2, 0x7f0b00d7

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 54
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 105
    const v0, 0x186a4

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 75
    const-string/jumbo v0, "@M_Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BesSurroundSettings:onCheckedChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v0, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->setBesSurroundState(Z)I

    .line 77
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/BesSurroundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 74
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/BesSurroundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 36
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 39
    :cond_0
    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/BesSurroundSettings;->addPreferencesFromResource(I)V

    .line 40
    const-string/jumbo v1, "movie_mode"

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/BesSurroundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/BesSurroundItem;

    iput-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMovieMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    .line 41
    const-string/jumbo v1, "music_mode"

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/BesSurroundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/BesSurroundItem;

    iput-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMusicMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    .line 42
    iget-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMovieMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    invoke-virtual {v1, p0}, Lcom/mediatek/audioprofile/BesSurroundItem;->setOnClickListener(Lcom/mediatek/audioprofile/BesSurroundItem$OnClickListener;)V

    .line 43
    iget-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMusicMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    invoke-virtual {v1, p0}, Lcom/mediatek/audioprofile/BesSurroundItem;->setOnClickListener(Lcom/mediatek/audioprofile/BesSurroundItem$OnClickListener;)V

    .line 44
    const-string/jumbo v1, "audioprofile"

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/BesSurroundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v1, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 33
    return-void
.end method

.method public onRadioButtonClicked(Lcom/mediatek/audioprofile/BesSurroundItem;)V
    .locals 3
    .param p1, "emiter"    # Lcom/mediatek/audioprofile/BesSurroundItem;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMovieMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    if-ne p1, v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setBesSurroundMode(I)I

    .line 95
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMusicMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/BesSurroundItem;->setChecked(Z)V

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p1, v2}, Lcom/mediatek/audioprofile/BesSurroundItem;->setChecked(Z)V

    .line 92
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMusicMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    if-ne p1, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->setBesSurroundMode(I)I

    .line 98
    iget-object v0, p0, Lcom/mediatek/audioprofile/BesSurroundSettings;->mMovieMode:Lcom/mediatek/audioprofile/BesSurroundItem;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/BesSurroundItem;->setChecked(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 50
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/BesSurroundSettings;->createSwitch()V

    .line 51
    invoke-direct {p0}, Lcom/mediatek/audioprofile/BesSurroundSettings;->initBesSurroundStatus()V

    .line 48
    return-void
.end method
