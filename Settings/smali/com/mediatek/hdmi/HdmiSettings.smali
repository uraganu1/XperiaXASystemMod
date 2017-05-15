.class public Lcom/mediatek/hdmi/HdmiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HdmiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hdmi/HdmiSettings$1;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAudioOutputPref:Landroid/preference/ListPreference;

.field private mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

.field private mHdmiSettingsObserver:Landroid/database/ContentObserver;

.field private mToggleHdmiPref:Landroid/preference/SwitchPreference;

.field private mVideoResolutionPref:Landroid/preference/ListPreference;

.field private mVideoScalePref:Landroid/preference/ListPreference;


# direct methods
.method static synthetic -wrap0(Lcom/mediatek/hdmi/HdmiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/hdmi/HdmiSettings;->updatePref()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 47
    new-instance v0, Lcom/mediatek/hdmi/HdmiSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/hdmi/HdmiSettings$1;-><init>(Lcom/mediatek/hdmi/HdmiSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    .line 27
    return-void
.end method

.method private updatePref()V
    .locals 2

    .prologue
    .line 147
    const-string/jumbo v0, "@M_HDMISettings"

    const-string/jumbo v1, "updatePref"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/mediatek/hdmi/HdmiSettings;->updatePrefStatus()V

    .line 149
    invoke-direct {p0}, Lcom/mediatek/hdmi/HdmiSettings;->updateSelectedResolution()V

    .line 150
    invoke-direct {p0}, Lcom/mediatek/hdmi/HdmiSettings;->updateSelectedScale()V

    .line 151
    invoke-direct {p0}, Lcom/mediatek/hdmi/HdmiSettings;->updateSelectedAudioOutput()V

    .line 146
    return-void
.end method

.method private updatePrefStatus()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 155
    const-string/jumbo v4, "@M_HDMISettings"

    const-string/jumbo v5, "updatePrefStatus"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 157
    .local v0, "dlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 160
    :cond_0
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 164
    :cond_1
    const/4 v3, 0x0

    .line 166
    .local v3, "shouldEnable":Z
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v4}, Lcom/mediatek/hdmi/IMtkHdmiManager;->isSignalOutputting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 170
    .end local v3    # "shouldEnable":Z
    :goto_0
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 171
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 172
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 173
    const-string/jumbo v5, "hdmi_enable_status"

    .line 172
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_2

    const/4 v2, 0x1

    .line 174
    .local v2, "hdmiEnabled":Z
    :goto_1
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mToggleHdmiPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 154
    return-void

    .line 167
    .end local v2    # "hdmiEnabled":Z
    .restart local v3    # "shouldEnable":Z
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "@M_HDMISettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hdmi manager RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "shouldEnable":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "hdmiEnabled":Z
    goto :goto_1
.end method

.method private updateSelectedAudioOutput()V
    .locals 7

    .prologue
    .line 227
    iget-object v3, p0, Lcom/mediatek/hdmi/HdmiSettings;->mAudioOutputPref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 228
    .local v1, "dlg":Landroid/app/Dialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 232
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/hdmi/HdmiSettings;->mAudioOutputPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v4}, Lcom/mediatek/hdmi/IMtkHdmiManager;->isSignalOutputting()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    iget-object v3, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 237
    const-string/jumbo v4, "hdmi_audio_output_mode"

    const/4 v5, 0x0

    const/4 v6, -0x2

    .line 236
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 238
    .local v0, "audioOutputMode":I
    iget-object v3, p0, Lcom/mediatek/hdmi/HdmiSettings;->mAudioOutputPref:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 239
    const-string/jumbo v3, "@M_HDMISettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSelectedAudioOutput audioOutputMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .line 233
    .end local v0    # "audioOutputMode":I
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "@M_HDMISettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hdmi manager RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSelectedResolution()V
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/16 v13, 0x64

    .line 178
    const-string/jumbo v10, "@M_HDMISettings"

    const-string/jumbo v11, "updateSelectedResolution"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v10, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 180
    .local v0, "dlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 183
    :cond_0
    iget-object v10, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 184
    const-string/jumbo v11, "hdmi_video_resolution"

    .line 183
    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 185
    .local v8, "videoResolution":I
    if-le v8, v13, :cond_1

    .line 186
    const/16 v8, 0x64

    .line 188
    :cond_1
    const/4 v10, 0x1

    new-array v7, v10, [I

    aput v13, v7, v9

    .line 190
    .local v7, "supportedResolutions":[I
    :try_start_0
    iget-object v10, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v10}, Lcom/mediatek/hdmi/IMtkHdmiManager;->getSupportedResolutions()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 194
    :goto_0
    iget-object v10, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 195
    const v11, 0x7f0a0046

    .line 194
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, "resolutionEntries":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v3, "realResolutionEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v4, "realResolutionValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v10, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0105

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    array-length v10, v7

    :goto_1
    if-ge v9, v10, :cond_2

    aget v5, v7, v9

    .line 202
    .local v5, "resolution":I
    :try_start_1
    aget-object v11, v6, v5

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 191
    .end local v3    # "realResolutionEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v4    # "realResolutionValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v5    # "resolution":I
    .end local v6    # "resolutionEntries":[Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "@M_HDMISettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "hdmi manager RemoteException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "realResolutionEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v4    # "realResolutionValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v5    # "resolution":I
    .restart local v6    # "resolutionEntries":[Ljava/lang/CharSequence;
    :catch_1
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v11, "@M_HDMISettings"

    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 208
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v5    # "resolution":I
    :cond_2
    iget-object v10, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    .line 209
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/CharSequence;

    .line 208
    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v10, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 210
    iget-object v10, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    .line 211
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/CharSequence;

    .line 210
    invoke-interface {v4, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v10, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 212
    iget-object v9, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private updateSelectedScale()V
    .locals 5

    .prologue
    .line 216
    const-string/jumbo v2, "@M_HDMISettings"

    const-string/jumbo v3, "updateSelectedScale"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 218
    .local v0, "dlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 222
    const-string/jumbo v3, "hdmi_video_scale"

    const/4 v4, 0x0

    .line 221
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 223
    .local v1, "videoScale":I
    iget-object v2, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 215
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x186a6

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x2

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    if-nez v4, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/mediatek/hdmi/HdmiSettings;->finish()V

    .line 91
    return-void

    .line 98
    :cond_0
    const v4, 0x7f0b0102

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HdmiSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v4}, Lcom/mediatek/hdmi/IMtkHdmiManager;->getDisplayType()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 100
    const v4, 0x7f0b0106

    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HdmiSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "hdmi":Ljava/lang/String;
    const v4, 0x7f0b0107

    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HdmiSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "mhl":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mToggleHdmiPref:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/mediatek/hdmi/HdmiSettings;->mToggleHdmiPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    .end local v1    # "hdmi":Ljava/lang/String;
    .end local v2    # "mhl":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/mediatek/hdmi/IMtkHdmiManager;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 109
    const-string/jumbo v4, "@M_HDMISettings"

    const-string/jumbo v5, "remove mVideoScalePref"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/mediatek/hdmi/HdmiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    :cond_1
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    const/16 v5, 0x78

    .line 114
    const/4 v6, 0x3

    .line 113
    invoke-interface {v4, v5, v6}, Lcom/mediatek/hdmi/IMtkHdmiManager;->getAudioParameter(II)I

    move-result v4

    if-gt v4, v7, :cond_2

    .line 115
    const-string/jumbo v4, "@M_HDMISettings"

    const-string/jumbo v5, "remove mAudioOutputPref"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/mediatek/hdmi/HdmiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/hdmi/HdmiSettings;->mAudioOutputPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 87
    .end local v3    # "title":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 106
    .restart local v3    # "title":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v3    # "title":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "@M_HDMISettings"

    const-string/jumbo v5, "HdmiManager RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const-string/jumbo v4, "@M_HDMISettings"

    const-string/jumbo v5, "HdmiSettings.onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const v4, 0x7f08002a

    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HdmiSettings;->addPreferencesFromResource(I)V

    .line 60
    invoke-virtual {p0}, Lcom/mediatek/hdmi/HdmiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    .line 61
    const-string/jumbo v4, "hdmi_toggler"

    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HdmiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mToggleHdmiPref:Landroid/preference/SwitchPreference;

    .line 62
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mToggleHdmiPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    const-string/jumbo v4, "video_resolution"

    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HdmiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    .line 64
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    const-string/jumbo v4, "video_scale"

    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HdmiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/preference/ListPreference;

    .line 66
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 68
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 69
    .local v3, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v2, "scaleEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 71
    aget-object v4, v3, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 73
    aget-object v6, v3, v1

    aput-object v6, v5, v7

    .line 72
    const v6, 0x7f0b010a

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0109

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_1
    iget-object v5, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/preference/ListPreference;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 79
    const-string/jumbo v4, "audio_output"

    invoke-virtual {p0, v4}, Lcom/mediatek/hdmi/HdmiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mAudioOutputPref:Landroid/preference/ListPreference;

    .line 80
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mAudioOutputPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    const-string/jumbo v4, "mtkhdmi"

    .line 82
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/hdmi/IMtkHdmiManager;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    .line 56
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 142
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 138
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 136
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    .line 243
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v6, "@M_HDMISettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " preference changed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :try_start_0
    const-string/jumbo v6, "hdmi_toggler"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 247
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 248
    .local v0, "checked":Z
    iget-object v6, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v6, v0}, Lcom/mediatek/hdmi/IMtkHdmiManager;->enableHdmi(Z)Z

    .line 274
    .end local v0    # "checked":Z
    :cond_0
    :goto_0
    return v9

    .line 249
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v6, "video_resolution"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 250
    iget-object v6, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/mediatek/hdmi/IMtkHdmiManager;->setVideoResolution(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "@M_HDMISettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "hdmi manager RemoteException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    :try_start_1
    const-string/jumbo v6, "video_scale"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 252
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 253
    .local v4, "scaleValue":I
    if-ltz v4, :cond_3

    const/16 v6, 0xa

    if-gt v4, v6, :cond_3

    .line 254
    iget-object v6, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v6, v4}, Lcom/mediatek/hdmi/IMtkHdmiManager;->setVideoScale(I)Z

    goto :goto_0

    .line 256
    :cond_3
    const-string/jumbo v6, "@M_HDMISettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "scaleValue error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    .end local v4    # "scaleValue":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v6, "audio_output"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 259
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 260
    .local v5, "which":I
    const/4 v3, 0x2

    .line 261
    .local v3, "maxChannel":I
    if-ne v5, v9, :cond_5

    .line 262
    iget-object v6, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    const/16 v7, 0x78

    .line 263
    const/4 v8, 0x3

    .line 262
    invoke-interface {v6, v7, v8}, Lcom/mediatek/hdmi/IMtkHdmiManager;->getAudioParameter(II)I

    move-result v3

    .line 265
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "HDMI_channel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 266
    iget-object v6, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 267
    const-string/jumbo v7, "hdmi_audio_output_mode"

    const/4 v8, -0x2

    .line 266
    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 268
    const-string/jumbo v6, "@M_HDMISettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "AudioSystem.setParameters HDMI_channel = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 269
    const-string/jumbo v8, ",which: "

    .line 268
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 126
    invoke-direct {p0}, Lcom/mediatek/hdmi/HdmiSettings;->updatePref()V

    .line 127
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 128
    const-string/jumbo v1, "hdmi_enable_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    .line 127
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    const-string/jumbo v1, "hdmi_cable_plugged"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    .line 130
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    return-void
.end method
