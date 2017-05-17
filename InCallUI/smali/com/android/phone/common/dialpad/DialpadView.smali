.class public Lcom/android/phone/common/dialpad/DialpadView;
.super Landroid/widget/LinearLayout;
.source "DialpadView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mButtonIds:[I

.field private mCanDigitsBeEdited:Z

.field private mDelete:Landroid/widget/ImageButton;

.field private mDigits:Landroid/widget/EditText;

.field private mIldCountry:Landroid/widget/TextView;

.field private mIldRate:Landroid/widget/TextView;

.field private final mIsLandscape:Z

.field private final mIsRtl:Z

.field private mOverflowMenuButton:Landroid/view/View;

.field private mRateContainer:Landroid/view/ViewGroup;

.field private mRippleColor:Landroid/content/res/ColorStateList;

.field private mTranslateDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    .line 96
    sget-object v1, Lcom/android/phone/common/R$styleable;->Dialpad:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 101
    const v4, 0x7f080063

    .line 100
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    .line 103
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 104
    const/4 v4, 0x2

    .line 103
    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    .line 105
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    .line 93
    return-void

    :cond_0
    move v1, v3

    .line 103
    goto :goto_0

    :cond_1
    move v2, v3

    .line 105
    goto :goto_1

    .line 76
    nop

    :array_0
    .array-data 4
        0x7f0f0064
        0x7f0f0060
        0x7f0f0056
        0x7f0f0057
        0x7f0f0058
        0x7f0f0059
        0x7f0f005a
        0x7f0f005b
        0x7f0f005c
        0x7f0f005d
        0x7f0f0063
        0x7f0f0062
    .end array-data
.end method

.method private getKeyButtonAnimationDelay(I)I
    .locals 6
    .param p1, "buttonId"    # I

    .prologue
    const/16 v5, 0xa5

    const/16 v4, 0x84

    const/16 v3, 0x63

    const/16 v2, 0x42

    const/16 v1, 0x21

    .line 300
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 301
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 302
    packed-switch p1, :pswitch_data_0

    .line 352
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Attempted to get animation delay for invalid key button id."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v0, 0x0

    return v0

    .line 303
    :pswitch_1
    return v1

    .line 304
    :pswitch_2
    return v2

    .line 305
    :pswitch_3
    return v3

    .line 306
    :pswitch_4
    return v4

    .line 307
    :pswitch_5
    return v5

    .line 308
    :pswitch_6
    const/16 v0, 0xc6

    return v0

    .line 309
    :pswitch_7
    const/16 v0, 0xe7

    return v0

    .line 310
    :pswitch_8
    const/16 v0, 0x108

    return v0

    .line 311
    :pswitch_9
    const/16 v0, 0x129

    return v0

    .line 312
    :pswitch_a
    const/16 v0, 0x14a

    return v0

    .line 315
    :pswitch_b
    const/16 v0, 0x16b

    return v0

    .line 318
    :cond_0
    packed-switch p1, :pswitch_data_1

    :pswitch_c
    goto :goto_0

    .line 323
    :pswitch_d
    return v5

    .line 319
    :pswitch_e
    return v1

    .line 320
    :pswitch_f
    return v2

    .line 321
    :pswitch_10
    return v3

    .line 322
    :pswitch_11
    return v4

    .line 324
    :pswitch_12
    const/16 v0, 0xc6

    return v0

    .line 325
    :pswitch_13
    const/16 v0, 0xe7

    return v0

    .line 326
    :pswitch_14
    const/16 v0, 0x108

    return v0

    .line 327
    :pswitch_15
    const/16 v0, 0x129

    return v0

    .line 328
    :pswitch_16
    const/16 v0, 0x14a

    return v0

    .line 331
    :pswitch_17
    const/16 v0, 0x16b

    return v0

    .line 335
    :cond_1
    packed-switch p1, :pswitch_data_2

    :pswitch_18
    goto :goto_0

    .line 337
    :pswitch_19
    return v2

    .line 336
    :pswitch_1a
    return v1

    .line 338
    :pswitch_1b
    return v3

    .line 339
    :pswitch_1c
    return v4

    .line 340
    :pswitch_1d
    return v5

    .line 341
    :pswitch_1e
    const/16 v0, 0xc6

    return v0

    .line 342
    :pswitch_1f
    const/16 v0, 0xe7

    return v0

    .line 343
    :pswitch_20
    const/16 v0, 0x108

    return v0

    .line 344
    :pswitch_21
    const/16 v0, 0x129

    return v0

    .line 345
    :pswitch_22
    const/16 v0, 0x14a

    return v0

    .line 348
    :pswitch_23
    const/16 v0, 0x16b

    return v0

    .line 302
    :pswitch_data_0
    .packed-switch 0x7f0f0056
        :pswitch_5
        :pswitch_1
        :pswitch_a
        :pswitch_6
        :pswitch_2
        :pswitch_b
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_4
        :pswitch_b
        :pswitch_8
    .end packed-switch

    .line 318
    :pswitch_data_1
    .packed-switch 0x7f0f0056
        :pswitch_d
        :pswitch_15
        :pswitch_f
        :pswitch_12
        :pswitch_16
        :pswitch_10
        :pswitch_13
        :pswitch_17
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_17
        :pswitch_11
        :pswitch_14
    .end packed-switch

    .line 335
    :pswitch_data_2
    .packed-switch 0x7f0f0056
        :pswitch_19
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_18
        :pswitch_18
        :pswitch_1a
        :pswitch_18
        :pswitch_23
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method private getKeyButtonAnimationDuration(I)I
    .locals 4
    .param p1, "buttonId"    # I

    .prologue
    const/16 v3, 0x14a

    const/16 v2, 0x129

    const/16 v1, 0x108

    .line 364
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 365
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 366
    packed-switch p1, :pswitch_data_0

    .line 422
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Attempted to get animation duration for invalid key button id."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v0, 0x0

    return v0

    .line 371
    :pswitch_1
    return v1

    .line 376
    :pswitch_2
    return v2

    .line 381
    :pswitch_3
    return v3

    .line 384
    :cond_0
    packed-switch p1, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 394
    :pswitch_5
    return v2

    .line 389
    :pswitch_6
    return v3

    .line 399
    :pswitch_7
    return v1

    .line 403
    :cond_1
    packed-switch p1, :pswitch_data_2

    :pswitch_8
    goto :goto_0

    .line 410
    :pswitch_9
    return v3

    .line 414
    :pswitch_a
    return v2

    .line 418
    :pswitch_b
    return v1

    .line 366
    :pswitch_data_0
    .packed-switch 0x7f0f0056
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 384
    :pswitch_data_1
    .packed-switch 0x7f0f0056
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 403
    :pswitch_data_2
    .packed-switch 0x7f0f0056
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private setupKeypad()V
    .locals 18

    .prologue
    .line 128
    const/16 v15, 0xc

    new-array v5, v15, [I

    .local v5, "letterIds":[I
    fill-array-data v5, :array_0

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 140
    .local v12, "resources":Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v2, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 144
    .local v2, "currentLocale":Ljava/util/Locale;
    const-string/jumbo v15, "fa"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 145
    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v15, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v15}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v7

    .line 150
    .local v7, "nf":Ljava/text/NumberFormat;
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    array-length v15, v15

    if-ge v4, v15, :cond_5

    .line 151
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v15, v15, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 152
    .local v3, "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    const v15, 0x7f0f005e

    invoke-virtual {v3, v15}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 153
    .local v10, "numberView":Landroid/widget/TextView;
    const v15, 0x7f0f005f

    invoke-virtual {v3, v15}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 157
    .local v6, "lettersView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v15, v15, v4

    const v16, 0x7f0f0062

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 158
    const v15, 0x7f0b011e

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "numberString":Ljava/lang/String;
    move-object v8, v9

    .line 174
    .local v8, "numberContentDescription":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f020010

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/RippleDrawable;

    .line 175
    .local v13, "rippleBackground":Landroid/graphics/drawable/RippleDrawable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    if-eqz v15, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v13, v15}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 179
    :cond_0
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 181
    invoke-virtual {v3, v8}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {v3, v13}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 184
    if-eqz v6, :cond_1

    .line 185
    aget v15, v5, v4

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 147
    .end local v3    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .end local v4    # "i":I
    .end local v6    # "lettersView":Landroid/widget/TextView;
    .end local v7    # "nf":Ljava/text/NumberFormat;
    .end local v8    # "numberContentDescription":Ljava/lang/String;
    .end local v9    # "numberString":Ljava/lang/String;
    .end local v10    # "numberView":Landroid/widget/TextView;
    .end local v13    # "rippleBackground":Landroid/graphics/drawable/RippleDrawable;
    :cond_2
    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v15}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v7

    .restart local v7    # "nf":Ljava/text/NumberFormat;
    goto :goto_0

    .line 160
    .restart local v3    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .restart local v4    # "i":I
    .restart local v6    # "lettersView":Landroid/widget/TextView;
    .restart local v10    # "numberView":Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v15, v15, v4

    const v16, 0x7f0f0063

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 161
    const v15, 0x7f0b011d

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 162
    .restart local v9    # "numberString":Ljava/lang/String;
    move-object v8, v9

    .restart local v8    # "numberContentDescription":Ljava/lang/String;
    goto :goto_2

    .line 164
    .end local v8    # "numberContentDescription":Ljava/lang/String;
    .end local v9    # "numberString":Ljava/lang/String;
    :cond_4
    int-to-long v0, v4

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    .line 169
    .restart local v9    # "numberString":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 170
    aget v16, v5, v4

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 169
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "numberContentDescription":Ljava/lang/String;
    goto :goto_2

    .line 189
    .end local v3    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .end local v6    # "lettersView":Landroid/widget/TextView;
    .end local v8    # "numberContentDescription":Ljava/lang/String;
    .end local v9    # "numberString":Ljava/lang/String;
    .end local v10    # "numberView":Landroid/widget/TextView;
    :cond_5
    const v15, 0x7f0f0060

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 191
    .local v11, "one":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    const v15, 0x7f0b012e

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 190
    invoke-virtual {v11, v15}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    const v15, 0x7f0f0064

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 195
    .local v14, "zero":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    const v15, 0x7f0b012d

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 194
    invoke-virtual {v14, v15}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    .line 127
    return-void

    .line 128
    :array_0
    .array-data 4
        0x7f0b011f
        0x7f0b0120
        0x7f0b0121
        0x7f0b0122
        0x7f0b0123
        0x7f0b0124
        0x7f0b0125
        0x7f0b0126
        0x7f0b0127
        0x7f0b0128
        0x7f0b0129
        0x7f0b012a
    .end array-data
.end method


# virtual methods
.method public animateShow()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 253
    new-instance v5, Lcom/android/phone/common/dialpad/DialpadView$1;

    invoke-direct {v5, p0}, Lcom/android/phone/common/dialpad/DialpadView$1;-><init>(Lcom/android/phone/common/dialpad/DialpadView;)V

    .line 255
    .local v5, "showListener":Landroid/animation/AnimatorListenerAdapter;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    array-length v6, v6

    if-ge v4, v6, :cond_2

    .line 256
    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v6, v6, v4

    invoke-direct {p0, v6}, Lcom/android/phone/common/dialpad/DialpadView;->getKeyButtonAnimationDelay(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe51eb851eb851fL    # 0.66

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 258
    .local v1, "delay":I
    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v6, v6, v4

    invoke-direct {p0, v6}, Lcom/android/phone/common/dialpad/DialpadView;->getKeyButtonAnimationDuration(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v3, v6

    .line 259
    .local v3, "duration":I
    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v6, v6, v4

    invoke-virtual {p0, v6}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 261
    .local v2, "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    invoke-virtual {v2}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 262
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    iget-boolean v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    if-eqz v6, :cond_1

    .line 265
    iget-boolean v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    if-eqz v6, :cond_0

    const/4 v6, -0x1

    :goto_1
    iget v7, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setTranslationX(F)V

    .line 266
    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 272
    :goto_2
    sget-object v6, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 273
    int-to-long v8, v1

    .line 272
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 274
    int-to-long v8, v3

    .line 272
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 255
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 265
    :cond_0
    const/4 v6, 0x1

    goto :goto_1

    .line 269
    :cond_1
    iget v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setTranslationY(F)V

    .line 270
    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 250
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    .end local v1    # "delay":I
    .end local v2    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .end local v3    # "duration":I
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadView;->setupKeypad()V

    .line 112
    const v1, 0x7f0f006c

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    .line 113
    const v1, 0x7f0f006d

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDelete:Landroid/widget/ImageButton;

    .line 114
    const v1, 0x7f0f006b

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    .line 115
    const v1, 0x7f0f0066

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    .line 116
    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0f0068

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIldCountry:Landroid/widget/TextView;

    .line 117
    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0f0069

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIldRate:Landroid/widget/TextView;

    .line 120
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 121
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelected(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public setCanDigitsBeEdited(Z)V
    .locals 6
    .param p1, "canBeEdited"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 213
    const v3, 0x7f0f006d

    invoke-virtual {p0, v3}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 214
    .local v0, "deleteButton":Landroid/view/View;
    if-eqz p1, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 215
    const v3, 0x7f0f006b

    invoke-virtual {p0, v3}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 216
    .local v2, "overflowMenuButton":Landroid/view/View;
    if-eqz p1, :cond_0

    move v5, v4

    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 218
    const v3, 0x7f0f006c

    invoke-virtual {p0, v3}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 219
    .local v1, "digits":Landroid/widget/EditText;
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 220
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 221
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 222
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 224
    iput-boolean p1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mCanDigitsBeEdited:Z

    .line 212
    return-void

    .end local v1    # "digits":Landroid/widget/EditText;
    .end local v2    # "overflowMenuButton":Landroid/view/View;
    :cond_1
    move v3, v5

    .line 214
    goto :goto_0
.end method
