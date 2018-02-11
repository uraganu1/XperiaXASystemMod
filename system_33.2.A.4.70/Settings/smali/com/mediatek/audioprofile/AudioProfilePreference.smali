.class public Lcom/mediatek/audioprofile/AudioProfilePreference;
.super Landroid/preference/Preference;
.source "AudioProfilePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sActiveKey:Ljava/lang/String;

.field private static sCurrentChecked:Landroid/widget/CompoundButton;


# instance fields
.field private mCheckboxButton:Landroid/widget/RadioButton;

.field private mContext:Landroid/content/Context;

.field private mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKey:Ljava/lang/String;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mPreferenceSummary:Ljava/lang/String;

.field private mPreferenceTitle:Ljava/lang/String;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mSummary:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/mediatek/audioprofile/AudioProfilePreference;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/audioprofile/AudioProfilePreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/audioprofile/AudioProfilePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    return-object v0
.end method

.method static synthetic -get3()Landroid/widget/CompoundButton;
    .locals 1

    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/CompoundButton;)Landroid/widget/CompoundButton;
    .locals 0

    sput-object p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 70
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    .line 76
    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    .line 77
    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 103
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    .line 105
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    .line 106
    const-string/jumbo v1, "layout_inflater"

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    .line 113
    :cond_0
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    .line 118
    :cond_1
    const-string/jumbo v0, "audioprofile"

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 120
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    .line 122
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getAudioProfilePlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAudioProfileExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    .line 100
    return-void
.end method


# virtual methods
.method public dynamicShowSummary()V
    .locals 5

    .prologue
    .line 240
    const-string/jumbo v2, "@M_Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AudioProfilePreference:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " dynamicShowSummary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 243
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 244
    .local v0, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 244
    if-eqz v2, :cond_3

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 248
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    .line 247
    invoke-virtual {v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->isVibrationEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 250
    .local v1, "vibrationEnabled":Z
    const-string/jumbo v2, "@M_Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AudioProfilePreference:vibrationEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eqz v1, :cond_2

    .line 253
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    .line 254
    const v4, 0x7f0b00a8

    .line 253
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    .end local v0    # "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v1    # "vibrationEnabled":Z
    :cond_1
    :goto_0
    return-void

    .line 256
    .restart local v0    # "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v1    # "vibrationEnabled":Z
    :cond_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00a7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 259
    .end local v1    # "vibrationEnabled":Z
    :cond_3
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 260
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 293
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 296
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 275
    const-string/jumbo v0, "@M_Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioProfilePreference:onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-eqz p2, :cond_1

    .line 278
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 279
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 281
    :cond_0
    sput-object p1, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 283
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 274
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 347
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 170
    const-string/jumbo v4, "@M_Settings/AudioP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AudioProfilePreference:onCreateView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    .line 172
    const-string/jumbo v5, "layout_inflater"

    .line 171
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mInflater:Landroid/view/LayoutInflater;

    .line 173
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040015

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 175
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f130023

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 176
    const v4, 0x7f130024

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    .line 177
    const v4, 0x7f130025

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    .line 179
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    new-instance v5, Lcom/mediatek/audioprofile/AudioProfilePreference$1;

    invoke-direct {v5, p0}, Lcom/mediatek/audioprofile/AudioProfilePreference$1;-><init>(Lcom/mediatek/audioprofile/AudioProfilePreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 207
    :cond_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 208
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    .line 215
    const v4, 0x7f130027

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 216
    .local v0, "detailsView":Landroid/widget/ImageView;
    const v4, 0x7f130026

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 218
    .local v1, "dividerImage":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 219
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 220
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 221
    .local v2, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4, v2}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 222
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4, v2}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 221
    if-nez v4, :cond_1

    .line 223
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    invoke-interface {v4}, Lcom/mediatek/settings/ext/IAudioProfileExt;->isOtherAudioProfileEditable()Z

    move-result v4

    .line 221
    if-eqz v4, :cond_4

    .line 224
    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .end local v2    # "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_2
    :goto_1
    return-object v3

    .line 210
    .end local v0    # "detailsView":Landroid/widget/ImageView;
    .end local v1    # "dividerImage":Landroid/widget/ImageView;
    :cond_3
    const-string/jumbo v4, "@M_Settings/AudioP"

    const-string/jumbo v5, "AudioProfilePreference:PreferenceTitle is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    .restart local v0    # "detailsView":Landroid/widget/ImageView;
    .restart local v1    # "dividerImage":Landroid/widget/ImageView;
    .restart local v2    # "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_4
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public setChecked()V
    .locals 3

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 309
    :cond_0
    const-string/jumbo v0, "@M_Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioProfilePreference:setChecked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 311
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 302
    :cond_1
    :goto_0
    return-void

    .line 315
    :cond_2
    const-string/jumbo v0, "@M_Settings/AudioP"

    const-string/jumbo v1, "AudioProfilePreference:mCheckboxButton is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 342
    return-void
.end method

.method public setProfileKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setKey(Ljava/lang/String;)V

    .line 158
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setTitle(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "setToProfile"    # Z

    .prologue
    .line 328
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    .line 329
    if-eqz p2, :cond_0

    .line 330
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_1
    return-void
.end method
