.class public Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
.super Ljava/lang/Object;
.source "NavigationButtonTransitions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;
    }
.end annotation


# static fields
.field private static final BACK_IDS:[I

.field private static final BACK_IME_IDS:[I

.field private static final BACK_IME_LAND_IDS:[I

.field private static final BACK_LAND_IDS:[I

.field private static final HOME_IDS:[I

.field private static final HOME_LAND_IDS:[I

.field private static final IME_SWITCHER_IDS:[I

.field private static final IME_SWITCHER_LAND_IDS:[I

.field private static final MENU_IDS:[I

.field private static final MENU_LAND_IDS:[I

.field private static final RECENT_IDS:[I

.field private static final RECENT_LAND_IDS:[I


# instance fields
.field private final HIGH_END:Z

.field private mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

.field private mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

.field private mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

.field private mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

.field private mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HOME_IDS:[I

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HOME_LAND_IDS:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->RECENT_IDS:[I

    .line 83
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->RECENT_LAND_IDS:[I

    .line 96
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->BACK_IDS:[I

    .line 109
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->BACK_LAND_IDS:[I

    .line 122
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->BACK_IME_IDS:[I

    .line 135
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->BACK_IME_LAND_IDS:[I

    .line 148
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->MENU_IDS:[I

    .line 161
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->MENU_LAND_IDS:[I

    .line 174
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->IME_SWITCHER_IDS:[I

    .line 189
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->IME_SWITCHER_LAND_IDS:[I

    .line 22
    return-void

    .line 44
    nop

    :array_0
    .array-data 4
        0x7f020254
        0x7f0200e6
        0x7f020260
        0x7f02026c
        0x7f02023c
        0x7f020248
        0x7f0200e6
        0x7f0200e6
    .end array-data

    .line 57
    :array_1
    .array-data 4
        0x7f02025a
        0x7f0200e7
        0x7f020266
        0x7f020272
        0x7f020242
        0x7f02024e
        0x7f0200e7
        0x7f0200e7
    .end array-data

    .line 70
    :array_2
    .array-data 4
        0x7f020256
        0x7f0200ec
        0x7f020262
        0x7f02026e
        0x7f02023e
        0x7f02024a
        0x7f0200ec
        0x7f0200ec
    .end array-data

    .line 83
    :array_3
    .array-data 4
        0x7f02025c
        0x7f0200ed
        0x7f020268
        0x7f020274
        0x7f020244
        0x7f020250
        0x7f0200ed
        0x7f0200ed
    .end array-data

    .line 96
    :array_4
    .array-data 4
        0x7f020252
        0x7f0200e2
        0x7f02025e
        0x7f02026a
        0x7f02023a
        0x7f020246
        0x7f0200e2
        0x7f0200e2
    .end array-data

    .line 109
    :array_5
    .array-data 4
        0x7f020258
        0x7f0200e5
        0x7f020264
        0x7f020270
        0x7f020240
        0x7f02024c
        0x7f0200e5
        0x7f0200e5
    .end array-data

    .line 122
    :array_6
    .array-data 4
        0x7f020253
        0x7f0200e3
        0x7f02025f
        0x7f02026b
        0x7f02023b
        0x7f020247
        0x7f0200e3
        0x7f0200e3
    .end array-data

    .line 135
    :array_7
    .array-data 4
        0x7f020259
        0x7f0200e4
        0x7f020265
        0x7f020271
        0x7f020241
        0x7f02024d
        0x7f0200e4
        0x7f0200e4
    .end array-data

    .line 148
    :array_8
    .array-data 4
        0x7f020255
        0x7f0200ea
        0x7f020261
        0x7f02026d
        0x7f02023d
        0x7f020249
        0x7f0200ea
        0x7f0200ea
    .end array-data

    .line 161
    :array_9
    .array-data 4
        0x7f02025b
        0x7f0200eb
        0x7f020267
        0x7f020273
        0x7f020243
        0x7f02024f
        0x7f0200eb
        0x7f0200eb
    .end array-data

    .line 174
    :array_a
    .array-data 4
        0x7f020257
        0x7f020047
        0x7f020263
        0x7f02026f
        0x7f02023f
        0x7f02024b
        0x7f020047
        0x7f020047
    .end array-data

    .line 189
    :array_b
    .array-data 4
        0x7f02025d
        0x7f020047
        0x7f020269
        0x7f020275
        0x7f020245
        0x7f020251
        0x7f020047
        0x7f020047
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HIGH_END:Z

    .line 22
    return-void
.end method


# virtual methods
.method public finishAnimations()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->finishAnimation()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->finishAnimation()V

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->finishAnimation()V

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->finishAnimation()V

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_4

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->finishAnimation()V

    .line 393
    :cond_4
    return-void
.end method

.method public startTransitions(II)V
    .locals 1
    .param p1, "newLayer"    # I
    .param p2, "duration"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->startTransition(II)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->startTransition(II)V

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->startTransition(II)V

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->startTransition(II)V

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v0, :cond_4

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->startTransition(II)V

    .line 368
    :cond_4
    return-void
.end method

.method public updateBackTransitions(Landroid/widget/ImageView;ZZ)V
    .locals 5
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "isLandscape"    # Z
    .param p3, "useBackImeIcon"    # Z

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    return-void

    .line 255
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HIGH_END:Z

    if-nez v3, :cond_4

    .line 256
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 257
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz p3, :cond_2

    .line 258
    if-eqz p2, :cond_1

    const v3, 0x7f0200e4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 262
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    return-void

    .line 259
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const v3, 0x7f0200e3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 260
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-eqz p2, :cond_3

    const v3, 0x7f0200e5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 261
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    const v3, 0x7f0200e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 266
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_4
    if-eqz p3, :cond_6

    .line 267
    if-eqz p2, :cond_5

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->BACK_IME_LAND_IDS:[I

    .line 269
    .local v2, "resId":[I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v3, :cond_8

    .line 270
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->updateCrossfadeDrawable([I)V

    .line 250
    :goto_2
    return-void

    .line 267
    .end local v2    # "resId":[I
    :cond_5
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->BACK_IME_IDS:[I

    .restart local v2    # "resId":[I
    goto :goto_1

    .line 268
    .end local v2    # "resId":[I
    :cond_6
    if-eqz p2, :cond_7

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->BACK_LAND_IDS:[I

    .restart local v2    # "resId":[I
    goto :goto_1

    .end local v2    # "resId":[I
    :cond_7
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->BACK_IDS:[I

    .restart local v2    # "resId":[I
    goto :goto_1

    .line 272
    :cond_8
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;Landroid/content/Context;[I)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    .line 273
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mBackTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public updateHomeTransitions(Landroid/widget/ImageView;Z)V
    .locals 5
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "isLandscape"    # Z

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    return-void

    .line 224
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HIGH_END:Z

    if-nez v3, :cond_2

    .line 225
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 226
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_1

    .line 227
    const v3, 0x7f0200e7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 229
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    return-void

    .line 228
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const v3, 0x7f0200e6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 233
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_2
    if-eqz p2, :cond_3

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HOME_LAND_IDS:[I

    .line 234
    .local v2, "resId":[I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v3, :cond_4

    .line 235
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->updateCrossfadeDrawable([I)V

    .line 219
    :goto_2
    return-void

    .line 233
    .end local v2    # "resId":[I
    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HOME_IDS:[I

    .restart local v2    # "resId":[I
    goto :goto_1

    .line 237
    :cond_4
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;Landroid/content/Context;[I)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    .line 238
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mHomeTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public updateImeSwitcherTransitions(Landroid/widget/ImageView;Z)V
    .locals 5
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "isLandscape"    # Z

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 342
    return-void

    .line 345
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HIGH_END:Z

    if-nez v3, :cond_1

    .line 346
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 348
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f020047

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 349
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    return-void

    .line 353
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    if-eqz p2, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->IME_SWITCHER_LAND_IDS:[I

    .line 354
    .local v2, "resId":[I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v3, :cond_3

    .line 355
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->updateCrossfadeDrawable([I)V

    .line 340
    :goto_1
    return-void

    .line 353
    .end local v2    # "resId":[I
    :cond_2
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->IME_SWITCHER_IDS:[I

    .restart local v2    # "resId":[I
    goto :goto_0

    .line 357
    :cond_3
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;Landroid/content/Context;[I)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    .line 358
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mImeSwitcherTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public updateMenuTransitions(Landroid/widget/ImageView;Z)V
    .locals 5
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "isLandscape"    # Z

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 314
    return-void

    .line 317
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HIGH_END:Z

    if-nez v3, :cond_2

    .line 318
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 319
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_1

    .line 320
    const v3, 0x7f0200eb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 322
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    return-void

    .line 321
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const v3, 0x7f0200ea

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 326
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_2
    if-eqz p2, :cond_3

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->MENU_LAND_IDS:[I

    .line 327
    .local v2, "resId":[I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v3, :cond_4

    .line 328
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->updateCrossfadeDrawable([I)V

    .line 312
    :goto_2
    return-void

    .line 326
    .end local v2    # "resId":[I
    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->MENU_IDS:[I

    .restart local v2    # "resId":[I
    goto :goto_1

    .line 330
    :cond_4
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;Landroid/content/Context;[I)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    .line 331
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mMenuTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public updateRecentTransitions(Landroid/widget/ImageView;Z)V
    .locals 5
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "isLandscape"    # Z

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 285
    return-void

    .line 288
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->HIGH_END:Z

    if-nez v3, :cond_2

    .line 289
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 290
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_1

    .line 291
    const v3, 0x7f0200ed

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 293
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    return-void

    .line 292
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const v3, 0x7f0200ec

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 297
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_2
    if-eqz p2, :cond_3

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->RECENT_LAND_IDS:[I

    .line 298
    .local v2, "resId":[I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    if-eqz v3, :cond_4

    .line 299
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;->updateCrossfadeDrawable([I)V

    .line 283
    :goto_2
    return-void

    .line 297
    .end local v2    # "resId":[I
    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->RECENT_IDS:[I

    .restart local v2    # "resId":[I
    goto :goto_1

    .line 301
    :cond_4
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;Landroid/content/Context;[I)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    .line 302
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->mRecentTransitions:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions$ButtonTransitions;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
