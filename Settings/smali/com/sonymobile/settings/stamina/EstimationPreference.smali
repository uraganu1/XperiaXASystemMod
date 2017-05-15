.class public Lcom/sonymobile/settings/stamina/EstimationPreference;
.super Landroid/preference/Preference;
.source "EstimationPreference.java"


# instance fields
.field private mBatteryDurationView:Landroid/widget/TextView;

.field private mBatteryLayout:Landroid/widget/LinearLayout;

.field private mBatteryPercentView:Landroid/widget/TextView;

.field private mBatteryPluggedView:Landroid/widget/ImageView;

.field private mBatteryStaminaView:Landroid/widget/ImageView;

.field private mBatteryUsmView:Landroid/widget/ImageView;

.field private mBatteryView:Landroid/widget/ImageView;

.field private mUsageView:Landroid/widget/TextView;

.field private mUsmDescrView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 55
    const v0, 0x7f0400aa

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->setLayoutResource(I)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 43
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-super/range {p0 .. p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v19

    .line 63
    .local v19, "context":Landroid/content/Context;
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 65
    .local v28, "res":Landroid/content/res/Resources;
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v10

    .line 66
    .local v10, "batteryBroadcast":Landroid/content/Intent;
    const/16 v36, 0x0

    .line 67
    .local v36, "threshold":I
    const v4, 0x7f0e0072

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 68
    .local v11, "batteryColor":I
    const v4, 0x7f0e006f

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 69
    .local v9, "batteryBackgroundColor":I
    const v4, 0x7f0e006e

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 70
    .local v15, "batteryTextColor":I
    invoke-static {v10}, Lcom/android/settings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v12

    .line 73
    .local v12, "batteryLevel":I
    :try_start_0
    const-string/jumbo v4, "com.android.systemui"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v34

    .line 74
    .local v34, "sysContext":Landroid/content/Context;
    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    .line 76
    .local v35, "sysRes":Landroid/content/res/Resources;
    const-string/jumbo v4, "batterymeter_color_levels"

    const-string/jumbo v5, "array"

    const-string/jumbo v6, "com.android.systemui"

    .line 75
    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    .line 77
    .local v29, "resId":I
    const/16 v37, 0x0

    .line 78
    .local v37, "tmpThreshold":[I
    move-object/from16 v0, v35

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v37

    .line 79
    .local v37, "tmpThreshold":[I
    const/4 v4, 0x0

    aget v36, v37, v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v29    # "resId":I
    .end local v34    # "sysContext":Landroid/content/Context;
    .end local v35    # "sysRes":Landroid/content/res/Resources;
    .end local v37    # "tmpThreshold":[I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isUsmEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    const v4, 0x7f0e0071

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    move v11, v15

    .line 93
    :cond_0
    :goto_1
    const v4, 0x7f13013e

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryView:Landroid/widget/ImageView;

    .line 94
    const v4, 0x7f13013f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryPluggedView:Landroid/widget/ImageView;

    .line 95
    const v4, 0x7f130140

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryStaminaView:Landroid/widget/ImageView;

    .line 96
    const v4, 0x7f130141

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryUsmView:Landroid/widget/ImageView;

    .line 98
    const v4, 0x7f130142

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryPercentView:Landroid/widget/TextView;

    .line 99
    const v4, 0x7f130143

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryDurationView:Landroid/widget/TextView;

    .line 100
    const v4, 0x7f130145

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mUsmDescrView:Landroid/widget/TextView;

    .line 101
    const v4, 0x7f130144

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mUsageView:Landroid/widget/TextView;

    .line 103
    const v4, 0x7f13013d

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryLayout:Landroid/widget/LinearLayout;

    .line 105
    const-string/jumbo v21, ""

    .line 106
    .local v21, "durationTime":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isUsmEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    .line 107
    invoke-static {v4, v5}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getUsmBatteryTimeEstimateString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v21

    .line 134
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryDurationView:Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryDurationView:Landroid/widget/TextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 139
    .local v8, "paint":Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    new-instance v41, Landroid/graphics/Paint;

    invoke-direct/range {v41 .. v41}, Landroid/graphics/Paint;-><init>()V

    .line 142
    .local v41, "xfermodePaint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 143
    const/16 v40, 0x9c

    .line 144
    .local v40, "x":I
    const/16 v42, 0xff

    .line 145
    .local v42, "y":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v40

    move/from16 v1, v42

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 146
    .local v17, "bm":Landroid/graphics/Bitmap;
    const/16 v4, 0x1e0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 147
    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 148
    .local v3, "c":Landroid/graphics/Canvas;
    const v4, 0x7f020021

    move-object/from16 v0, v28

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 149
    .local v16, "bg":Landroid/graphics/Bitmap;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v39

    .line 150
    .local v39, "w":I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    .line 151
    .local v23, "h":I
    new-instance v31, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v39

    move/from16 v2, v23

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 152
    .local v31, "src":Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v40

    move/from16 v2, v42

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 153
    .local v20, "dst":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    invoke-virtual {v3, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 154
    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object/from16 v0, v41

    invoke-virtual {v3, v4, v0, v5}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v30

    .line 155
    .local v30, "sc":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x431c0000    # 156.0f

    const/high16 v7, 0x437f0000    # 255.0f

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 156
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    const/4 v4, 0x0

    int-to-float v5, v12

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    rsub-int v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x431c0000    # 156.0f

    const/high16 v7, 0x437f0000    # 255.0f

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 158
    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryPercentView:Landroid/widget/TextView;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 161
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f0b0c56

    .line 160
    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryLayout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/sonymobile/settings/stamina/EstimationPreference$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/sonymobile/settings/stamina/EstimationPreference$1;-><init>(Lcom/sonymobile/settings/stamina/EstimationPreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryView:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    const-string/jumbo v4, "plugged"

    const/4 v5, 0x0

    invoke-virtual {v10, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 176
    .local v13, "batteryPlugged":I
    const-string/jumbo v4, "status"

    .line 177
    const/4 v5, 0x1

    .line 176
    invoke-virtual {v10, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 178
    .local v14, "batteryStatus":I
    if-eqz v13, :cond_1

    .line 179
    const/4 v4, 0x2

    if-eq v14, v4, :cond_c

    .line 180
    const/4 v4, 0x4

    if-eq v14, v4, :cond_c

    .line 181
    const/4 v4, 0x5

    if-eq v14, v4, :cond_c

    .line 182
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryPluggedView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isUsmEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryUsmView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryStaminaView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    :goto_3
    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    .line 201
    .local v18, "config":Landroid/content/res/Configuration;
    const v4, 0x7f130145

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 203
    .local v38, "usmDescrView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isUsmEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 204
    move-object/from16 v0, v18

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/Utils;->getUsmDesc(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :goto_4
    return-void

    .line 80
    .end local v3    # "c":Landroid/graphics/Canvas;
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v13    # "batteryPlugged":I
    .end local v14    # "batteryStatus":I
    .end local v16    # "bg":Landroid/graphics/Bitmap;
    .end local v17    # "bm":Landroid/graphics/Bitmap;
    .end local v18    # "config":Landroid/content/res/Configuration;
    .end local v20    # "dst":Landroid/graphics/Rect;
    .end local v21    # "durationTime":Ljava/lang/String;
    .end local v23    # "h":I
    .end local v30    # "sc":I
    .end local v31    # "src":Landroid/graphics/Rect;
    .end local v38    # "usmDescrView":Landroid/widget/TextView;
    .end local v39    # "w":I
    .end local v40    # "x":I
    .end local v41    # "xfermodePaint":Landroid/graphics/Paint;
    .end local v42    # "y":I
    :catch_0
    move-exception v22

    .line 81
    .local v22, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "EstimationPreference"

    const-string/jumbo v5, "Can\'t find systemui package."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 86
    .end local v22    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    const v4, 0x7f0e0072

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 88
    const v4, 0x7f0e0073

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    goto/16 :goto_1

    .line 89
    :cond_3
    move/from16 v0, v36

    if-gt v12, v0, :cond_0

    .line 90
    const v4, 0x7f0e0070

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    move v11, v15

    goto/16 :goto_1

    .line 111
    .restart local v21    # "durationTime":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    .line 110
    invoke-static {v4, v5}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getBatteryTimeEstimate(Landroid/content/Context;Z)I

    move-result v25

    .line 113
    .local v25, "lbmBatteryTime":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    .line 112
    invoke-static {v4, v5}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getBatteryTimeEstimate(Landroid/content/Context;Z)I

    move-result v26

    .line 114
    .local v26, "normalBatteryTime":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getStaminaActiveState(Landroid/content/Context;)I

    move-result v32

    .line 116
    .local v32, "staminaState":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 115
    invoke-static {v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getStaminaBatteryThreshold(Landroid/content/Context;)I

    move-result v33

    .line 117
    .local v33, "staminaThreshold":I
    move/from16 v0, v33

    if-gt v12, v0, :cond_6

    const/16 v24, 0x1

    .line 119
    .local v24, "isActiveBatteryLevel":Z
    :goto_5
    const/4 v4, 0x2

    move/from16 v0, v32

    if-eq v0, v4, :cond_5

    .line 120
    const/4 v4, 0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_7

    .line 119
    if-eqz v24, :cond_7

    .line 122
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    .line 121
    move/from16 v0, v25

    invoke-static {v4, v0, v5}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    .line 117
    .end local v24    # "isActiveBatteryLevel":Z
    :cond_6
    const/16 v24, 0x0

    .restart local v24    # "isActiveBatteryLevel":Z
    goto :goto_5

    .line 123
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_8

    if-eqz v24, :cond_9

    .line 131
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    .line 130
    move/from16 v0, v26

    invoke-static {v4, v0, v5}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    .line 124
    :cond_9
    sub-int v4, v12, v33

    int-to-float v4, v4

    .line 125
    int-to-float v5, v12

    .line 124
    div-float/2addr v4, v5

    .line 125
    move/from16 v0, v26

    int-to-float v5, v0

    .line 124
    mul-float/2addr v4, v5

    .line 126
    move/from16 v0, v33

    int-to-float v5, v0

    int-to-float v6, v12

    div-float/2addr v5, v6

    move/from16 v0, v25

    int-to-float v6, v0

    mul-float/2addr v5, v6

    .line 124
    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v27, v0

    .line 128
    .local v27, "predictionTime":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    .line 127
    move/from16 v0, v27

    invoke-static {v4, v0, v5}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    .line 187
    .end local v24    # "isActiveBatteryLevel":Z
    .end local v25    # "lbmBatteryTime":I
    .end local v26    # "normalBatteryTime":I
    .end local v27    # "predictionTime":I
    .end local v32    # "staminaState":I
    .end local v33    # "staminaThreshold":I
    .restart local v3    # "c":Landroid/graphics/Canvas;
    .restart local v8    # "paint":Landroid/graphics/Paint;
    .restart local v13    # "batteryPlugged":I
    .restart local v14    # "batteryStatus":I
    .restart local v16    # "bg":Landroid/graphics/Bitmap;
    .restart local v17    # "bm":Landroid/graphics/Bitmap;
    .restart local v20    # "dst":Landroid/graphics/Rect;
    .restart local v23    # "h":I
    .restart local v30    # "sc":I
    .restart local v31    # "src":Landroid/graphics/Rect;
    .restart local v39    # "w":I
    .restart local v40    # "x":I
    .restart local v41    # "xfermodePaint":Landroid/graphics/Paint;
    .restart local v42    # "y":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryUsmView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryStaminaView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 191
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryStaminaView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryUsmView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 195
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryPluggedView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryStaminaView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/settings/stamina/EstimationPreference;->mBatteryUsmView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 207
    .restart local v18    # "config":Landroid/content/res/Configuration;
    .restart local v38    # "usmDescrView":Landroid/widget/TextView;
    :cond_d
    const/16 v4, 0x8

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method
