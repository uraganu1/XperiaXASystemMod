.class public Lcom/android/settings/dashboard/DashboardSummary;
.super Lcom/android/settings/InstrumentedFragment;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;,
        Lcom/android/settings/dashboard/DashboardSummary$1;
    }
.end annotation


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModeSwitch:Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;

.field private mDashboard:Landroid/view/ViewGroup;

.field private mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mHandler:Landroid/os/Handler;

.field private mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    .line 55
    return-void
.end method

.method private initSwitchWidget(Lcom/android/settings/dashboard/DashboardTileView;Lcom/android/settings/dashboard/DashboardTile;)V
    .locals 3
    .param p1, "tileView"    # Lcom/android/settings/dashboard/DashboardTileView;
    .param p2, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 252
    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardTileView;->getSwitchWidget()Landroid/widget/Switch;

    move-result-object v0

    .line 253
    .local v0, "switchWidget":Landroid/widget/Switch;
    if-eqz v0, :cond_0

    .line 254
    iget v1, p2, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    const v2, 0x7f0b022e

    if-ne v1, v2, :cond_1

    .line 255
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneModeSwitch:Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneModeSwitch:Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->setSwitchWidget(Landroid/widget/Switch;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_0
.end method

.method private rebuildUI(Landroid/content/Context;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    const-string/jumbo v2, "DashboardSummary"

    const-string/jumbo v3, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void

    .line 163
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 164
    .local v20, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 166
    .local v4, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v2, p1

    .line 169
    check-cast v2, Lcom/android/settings/SettingsActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsActivity;->getDashboardCategories(Z)Ljava/util/List;

    move-result-object v9

    .line 171
    .local v9, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    .line 173
    .local v14, "count":I
    const/16 v18, 0x0

    .local v18, "n":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v14, :cond_3

    .line 174
    move/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/dashboard/DashboardCategory;

    .line 176
    .local v10, "category":Lcom/android/settings/dashboard/DashboardCategory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const v6, 0x7f040044

    .line 177
    const/4 v8, 0x0

    .line 176
    invoke-virtual {v2, v6, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 179
    .local v13, "categoryView":Landroid/view/View;
    const v2, 0x7f130076

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 180
    .local v12, "categoryLabel":Landroid/widget/TextView;
    invoke-virtual {v10, v4}, Lcom/android/settings/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const v2, 0x7f130077

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 185
    .local v11, "categoryContent":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v22

    .line 186
    .local v22, "tilesCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v22

    if-ge v15, v0, :cond_2

    .line 187
    invoke-virtual {v10, v15}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v5

    .line 189
    .local v5, "tile":Lcom/android/settings/dashboard/DashboardTile;
    new-instance v19, Lcom/android/settings/dashboard/DashboardTileView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;)V

    .line 190
    .local v19, "tileView":Lcom/android/settings/dashboard/DashboardTileView;
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    .line 191
    .local v7, "tileTextView":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    .line 192
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/dashboard/DashboardTileView;->getStatusTextView()Landroid/widget/TextView;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 191
    invoke-direct/range {v2 .. v8}, Lcom/android/settings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 193
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lcom/android/settings/dashboard/DashboardSummary;->initSwitchWidget(Lcom/android/settings/dashboard/DashboardTileView;Lcom/android/settings/dashboard/DashboardTile;)V

    .line 195
    iget-boolean v2, v5, Lcom/android/settings/dashboard/DashboardTile;->isDisabled:Z

    if-eqz v2, :cond_1

    .line 196
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 197
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settings/dashboard/DashboardTileView;->setEnabled(Z)V

    .line 199
    :cond_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/DashboardTileView;->setTile(Lcom/android/settings/dashboard/DashboardTile;)V

    .line 201
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 186
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 205
    .end local v5    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .end local v7    # "tileTextView":Landroid/widget/TextView;
    .end local v19    # "tileView":Lcom/android/settings/dashboard/DashboardTileView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 173
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 207
    .end local v10    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v11    # "categoryContent":Landroid/view/ViewGroup;
    .end local v12    # "categoryLabel":Landroid/widget/TextView;
    .end local v13    # "categoryView":Landroid/view/View;
    .end local v15    # "i":I
    .end local v22    # "tilesCount":I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v20

    .line 208
    .local v16, "delta":J
    const-string/jumbo v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rebuildUI took: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method private sendRebuildUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 266
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 265
    :cond_0
    return-void
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/settings/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;
    .param p6, "statusTextView"    # Landroid/widget/TextView;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 214
    iget-object v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 216
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 217
    iget-object v5, p3, Lcom/android/settings/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    .line 216
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 217
    iget v5, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    const/4 v6, 0x0

    .line 216
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 218
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 220
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 221
    .local v3, "tintColor":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010435

    .line 222
    const/4 v6, 0x1

    .line 221
    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 223
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 225
    .end local v3    # "tintColor":Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 240
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    .line 239
    invoke-interface {v4, v5, v6}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 243
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 244
    invoke-virtual {p6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    invoke-virtual {p6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :goto_1
    return-void

    .line 226
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 230
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    if-lez v4, :cond_2

    .line 231
    iget v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-interface {v4, p3, p4}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeDashboardTile(Ljava/lang/Object;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 247
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {p6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x23

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneModeSwitch:Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneModeSwitch:Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;->onActivityResult(Lcom/android/settings/AirplaneModeEnabler;IILandroid/content/Intent;)V

    .line 154
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 149
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->setHasOptionsMenu(Z)V

    .line 96
    new-instance v0, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneModeSwitch:Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;

    .line 97
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneModeSwitch:Lcom/sonymobile/settings/dashboard/AirplaneModeWidgetSwitchPreference;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 91
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcom/android/settings/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 103
    const v2, 0x7f0b0d2c

    invoke-static {v0, p1, v2, v1}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 101
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/UtilsExt;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 140
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 142
    const v1, 0x7f040043

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f130074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    .line 145
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 129
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->sendRebuildUI()V

    .line 113
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 117
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    return-void
.end method
