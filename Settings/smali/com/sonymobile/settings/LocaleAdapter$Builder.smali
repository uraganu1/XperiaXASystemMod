.class public Lcom/sonymobile/settings/LocaleAdapter$Builder;
.super Ljava/lang/Object;
.source "LocaleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/LocaleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomizedCountry:Ljava/lang/String;

.field private mCustomizedLanguage:Ljava/lang/String;

.field private mDefaultSimCountry:Ljava/lang/String;

.field private mDefaultSwCountry:Ljava/lang/String;

.field private mDefaultSwLanguage:Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mContext:Landroid/content/Context;

    .line 184
    return-void
.end method

.method private buildLanguageList(Landroid/widget/ArrayAdapter;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "fwkLocaleList":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 251
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v8, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    const/4 v4, 0x0

    .line 254
    .local v4, "isSwLocaleValid":Z
    const/4 v3, 0x0

    .line 255
    .local v3, "isSimCountryValid":Z
    const/4 v9, 0x0

    .line 257
    .local v9, "topLanguageFound":Z
    const/4 v2, 0x0

    .end local v3    # "isSimCountryValid":Z
    .end local v4    # "isSwLocaleValid":Z
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 258
    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 259
    .local v7, "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {v7}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 261
    .local v5, "l":Ljava/util/Locale;
    invoke-direct {p0, v5}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->isDefaultLocale(Ljava/util/Locale;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 262
    const/4 v9, 0x1

    .line 266
    :cond_0
    if-nez v4, :cond_1

    .line 267
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwLanguage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 268
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwCountry:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 270
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 271
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSimCountry:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 257
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "isSwLocaleValid":Z
    goto :goto_1

    .line 275
    .end local v4    # "isSwLocaleValid":Z
    .end local v5    # "l":Ljava/util/Locale;
    .end local v7    # "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_4
    if-nez v9, :cond_5

    .line 277
    invoke-direct {p0, v4, v3}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->changeStateWhenNoDefaultLocale(ZZ)V

    .line 284
    :cond_5
    const/4 v1, 0x0

    .line 285
    .local v1, "divider":I
    const/4 v0, 0x0

    .line 286
    .local v0, "defaultLocale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    .line 287
    .end local v0    # "defaultLocale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_6
    :goto_2
    if-lt v2, v1, :cond_8

    .line 288
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 289
    .local v6, "loc":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v6}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 290
    .restart local v5    # "l":Ljava/util/Locale;
    invoke-direct {p0, v5}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->isDefaultLocale(Ljava/util/Locale;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 291
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v8, v13, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 295
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 296
    if-nez v0, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 297
    move-object v0, v6

    .local v0, "defaultLocale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    goto :goto_2

    .line 303
    .end local v0    # "defaultLocale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .end local v5    # "l":Ljava/util/Locale;
    .end local v6    # "loc":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_8
    if-eqz v1, :cond_9

    iget v10, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_9

    .line 304
    new-instance v5, Ljava/util/Locale;

    iget-object v10, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedLanguage:Ljava/lang/String;

    .line 305
    iget-object v11, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedCountry:Ljava/lang/String;

    .line 304
    invoke-direct {v5, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .restart local v5    # "l":Ljava/util/Locale;
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_9

    .line 307
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 308
    .restart local v6    # "loc":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v6}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 309
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v8, v13, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 317
    .end local v5    # "l":Ljava/util/Locale;
    .end local v6    # "loc":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_9
    new-instance v10, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-direct {v10, v12, v12}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v8, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 318
    if-eqz v0, :cond_a

    .line 319
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 320
    invoke-virtual {v8, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 322
    :cond_a
    return-object v8

    .line 306
    .restart local v5    # "l":Ljava/util/Locale;
    .restart local v6    # "loc":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private changeStateWhenNoDefaultLocale(ZZ)V
    .locals 3
    .param p1, "isSwLocaleValid"    # Z
    .param p2, "isSimCountryValid"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 332
    iget v0, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 355
    :pswitch_0
    const-string/jumbo v0, "LocaleAdapter.Builder"

    const-string/jumbo v1, "Error, wrong state. Defaulting to resolve default locale"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iput v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    .line 331
    :goto_0
    return-void

    .line 335
    :pswitch_1
    if-eqz p2, :cond_0

    .line 336
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    .line 337
    :cond_0
    if-eqz p1, :cond_1

    .line 338
    iput v1, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    .line 340
    :cond_1
    iput v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    .line 344
    :pswitch_2
    if-eqz p1, :cond_2

    .line 345
    iput v1, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    .line 347
    :cond_2
    iput v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    .line 351
    :pswitch_3
    iput v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isDefaultLocale(Ljava/util/Locale;)Z
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "isDefaultLocale":Z
    if-eqz p1, :cond_0

    .line 369
    iget v1, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 388
    const-string/jumbo v1, "LocaleAdapter.Builder"

    const-string/jumbo v2, "Error, unsupported state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v0    # "isDefaultLocale":Z
    :cond_0
    :goto_0
    return v0

    .line 371
    .restart local v0    # "isDefaultLocale":Z
    :pswitch_0
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "isDefaultLocale":Z
    goto :goto_0

    .line 371
    .local v0, "isDefaultLocale":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 375
    :pswitch_1
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "isDefaultLocale":Z
    goto :goto_0

    .line 378
    .local v0, "isDefaultLocale":Z
    :pswitch_2
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSimCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "isDefaultLocale":Z
    goto :goto_0

    .line 381
    .local v0, "isDefaultLocale":Z
    :pswitch_3
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 382
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "isDefaultLocale":Z
    goto :goto_0

    .line 381
    .local v0, "isDefaultLocale":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 385
    :pswitch_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "isDefaultLocale":Z
    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setUpDefaultLocales()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x5

    .line 200
    iget-object v6, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 201
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mContext:Landroid/content/Context;

    .line 202
    const-string/jumbo v7, "phone"

    .line 201
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 203
    .local v3, "manager":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_2

    .line 204
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    if-ne v6, v8, :cond_1

    const/4 v2, 0x1

    .line 207
    .local v2, "isSimReady":Z
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    iput-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSimCountry:Ljava/lang/String;

    .line 209
    const-string/jumbo v5, "ro.product.locale.language"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwLanguage:Ljava/lang/String;

    .line 210
    const-string/jumbo v5, "ro.product.locale.region"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwCountry:Ljava/lang/String;

    .line 213
    const v5, 0x7f0b0bb6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "custLocaleStr":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 217
    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedCountry:Ljava/lang/String;

    .line 218
    const/4 v5, 0x2

    invoke-virtual {v1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedLanguage:Ljava/lang/String;

    .line 221
    const v5, 0x7f100013

    .line 220
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 222
    .local v0, "custLocaleSortOrderSingle":Z
    if-eqz v0, :cond_3

    .line 223
    iput v10, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    .line 199
    .end local v0    # "custLocaleSortOrderSingle":Z
    :goto_1
    return-void

    .line 204
    .end local v1    # "custLocaleStr":Ljava/lang/String;
    .end local v2    # "isSimReady":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isSimReady":Z
    goto :goto_0

    .line 203
    .end local v2    # "isSimReady":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isSimReady":Z
    goto :goto_0

    .line 225
    .restart local v0    # "custLocaleSortOrderSingle":Z
    .restart local v1    # "custLocaleStr":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x4

    iput v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_1

    .line 227
    .end local v0    # "custLocaleSortOrderSingle":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 228
    iput v9, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_1

    .line 230
    :cond_5
    const/4 v5, 0x1

    iput v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_1
.end method


# virtual methods
.method public create()Lcom/sonymobile/settings/LocaleAdapter;
    .locals 4

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->setUpDefaultLocales()V

    .line 192
    iget-object v1, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mContext:Landroid/content/Context;

    .line 191
    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 193
    .local v0, "fwkLocaleList":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    new-instance v1, Lcom/sonymobile/settings/LocaleAdapter;

    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->buildLanguageList(Landroid/widget/ArrayAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/settings/LocaleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v1
.end method
