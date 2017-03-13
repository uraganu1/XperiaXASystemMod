.class public Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/NotificationViewWrapper;
.source "NotificationTemplateViewWrapper.java"


# instance fields
.field private final mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

.field private mIcon:Landroid/widget/ImageView;

.field private mIconBackgroundColor:I

.field private final mIconBackgroundDarkColor:I

.field private final mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mIconDarkAlpha:I

.field private mIconForceGraysaleWhenDark:Z

.field private mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field protected mPicture:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;)Landroid/graphics/ColorMatrix;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconDarkAlpha:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;F)V
    .locals 0
    .param p1, "intensity"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateGrayscaleMatrix(F)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;Landroid/widget/ImageView;F)V
    .locals 0
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "intensity"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateIconColorFilter(Landroid/widget/ImageView;F)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/NotificationViewWrapper;-><init>(Landroid/view/View;)V

    .line 44
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    .line 45
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 46
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    .line 45
    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconDarkAlpha:I

    .line 63
    const v0, 0x7f0b0036

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 62
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconBackgroundDarkColor:I

    .line 65
    const v0, 0x10c000e

    .line 64
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->resolveViews()V

    .line 59
    return-void
.end method

.method private fadeIconAlpha(Landroid/widget/ImageView;ZJ)V
    .locals 7
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 178
    new-instance v2, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$2;-><init>(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;Landroid/widget/ImageView;)V

    .line 184
    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    .line 178
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 177
    return-void
.end method

.method private fadeIconColorFilter(Landroid/widget/ImageView;ZJ)V
    .locals 7
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 169
    new-instance v2, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;Landroid/widget/ImageView;)V

    .line 174
    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    .line 169
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 168
    return-void
.end method

.method private static interpolateColor(IIF)I
    .locals 13
    .param p0, "source"    # I
    .param p1, "target"    # I
    .param p2, "t"    # F

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 238
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 239
    .local v0, "aSource":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 240
    .local v6, "rSource":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 241
    .local v4, "gSource":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 242
    .local v2, "bSource":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 243
    .local v1, "aTarget":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 244
    .local v7, "rTarget":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 245
    .local v5, "gTarget":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 247
    .local v3, "bTarget":I
    int-to-float v8, v0

    sub-float v9, v12, p2

    mul-float/2addr v8, v9

    int-to-float v9, v1

    mul-float/2addr v9, p2

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 248
    int-to-float v9, v6

    sub-float v10, v12, p2

    mul-float/2addr v9, v10

    int-to-float v10, v7

    mul-float/2addr v10, p2

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 249
    int-to-float v10, v4

    sub-float v11, v12, p2

    mul-float/2addr v10, v11

    int-to-float v11, v5

    mul-float/2addr v11, p2

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 250
    int-to-float v11, v2

    sub-float/2addr v12, p2

    mul-float/2addr v11, v12

    int-to-float v12, v3

    mul-float/2addr v12, p2

    add-float/2addr v11, v12

    float-to-int v11, v11

    .line 246
    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    return v8
.end method

.method private resolveBackgroundColor(Landroid/widget/ImageView;)I
    .locals 2
    .param p1, "icon"    # Landroid/widget/ImageView;

    .prologue
    .line 99
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 101
    .local v0, "filter":Landroid/graphics/ColorFilter;
    instance-of v1, v0, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    .end local v0    # "filter":Landroid/graphics/ColorFilter;
    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v1

    return v1

    .line 105
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private resolveIcon(Landroid/widget/ImageView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 2
    .param p1, "largeIcon"    # Landroid/widget/ImageView;
    .param p2, "rightIcon"    # Landroid/widget/ImageView;

    .prologue
    const/4 v0, 0x0

    .line 87
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .end local p1    # "largeIcon":Landroid/widget/ImageView;
    :goto_0
    return-object p1

    .line 88
    .restart local p1    # "largeIcon":Landroid/widget/ImageView;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move-object p1, p2

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 89
    goto :goto_0
.end method

.method private resolvePicture(Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 2
    .param p1, "largeIcon"    # Landroid/widget/ImageView;

    .prologue
    const/4 v0, 0x0

    .line 93
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .end local p1    # "largeIcon":Landroid/widget/ImageView;
    :goto_0
    return-object p1

    .restart local p1    # "largeIcon":Landroid/widget/ImageView;
    :cond_0
    move-object p1, v0

    .line 95
    goto :goto_0
.end method

.method private resolveViews()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 70
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v7, 0x102037b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 71
    .local v2, "mainColumn":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 72
    new-instance v4, Lcom/android/systemui/ViewInvertHelper;

    const-wide/16 v6, 0x2bc

    invoke-direct {v4, v2, v6, v7}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    .line 71
    :cond_0
    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    .line 74
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v6, 0x1020006

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 75
    .local v1, "largeIcon":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v6, 0x1020040

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 76
    .local v3, "rightIcon":Landroid/widget/ImageView;
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->resolveIcon(Landroid/widget/ImageView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    .line 77
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->resolvePicture(Landroid/widget/ImageView;)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    .line 78
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->resolveBackgroundColor(Landroid/widget/ImageView;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconBackgroundColor:I

    .line 82
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 83
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconForceGraysaleWhenDark:Z

    .line 69
    return-void

    .line 82
    :cond_1
    const/4 v0, 0x0

    .local v0, "iconDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v0    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move v4, v5

    .line 83
    goto :goto_1
.end method

.method private startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J
    .param p5, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 155
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    .line 156
    .local v2, "startIntensity":F
    :goto_0
    if-eqz p2, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 157
    .local v1, "endIntensity":F
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 158
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 159
    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 160
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 162
    if-eqz p5, :cond_0

    .line 163
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 165
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 154
    return-void

    .line 155
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "endIntensity":F
    .end local v2    # "startIntensity":F
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "startIntensity":F
    goto :goto_0

    .line 156
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "endIntensity":F
    goto :goto_1
.end method

.method private updateGrayscaleMatrix(F)V
    .locals 2
    .param p1, "intensity"    # F

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 233
    return-void
.end method

.method private updateIconAlpha(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z

    .prologue
    .line 221
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconDarkAlpha:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 220
    return-void

    .line 221
    :cond_0
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private updateIconColorFilter(Landroid/widget/ImageView;F)V
    .locals 4
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "intensity"    # F

    .prologue
    .line 209
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconBackgroundColor:I

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconBackgroundDarkColor:I

    invoke-static {v2, v3, p2}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->interpolateColor(IIF)I

    move-result v1

    .line 210
    .local v1, "color":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v1}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 211
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 215
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 208
    :cond_0
    return-void
.end method

.method private updateIconColorFilter(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z

    .prologue
    .line 205
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateIconColorFilter(Landroid/widget/ImageView;F)V

    .line 204
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected fadeGrayscale(Landroid/widget/ImageView;ZJ)V
    .locals 7
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 188
    new-instance v2, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$3;-><init>(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;Landroid/widget/ImageView;)V

    .line 194
    new-instance v6, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$4;

    invoke-direct {v6, p0, p2, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper$4;-><init>(Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;ZLandroid/widget/ImageView;)V

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    .line 188
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 187
    return-void
.end method

.method public notifyContentUpdated()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->notifyContentUpdated()V

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->resolveViews()V

    .line 109
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    if-eqz v0, :cond_0

    .line 119
    if-eqz p2, :cond_2

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V

    .line 125
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 126
    if-eqz p2, :cond_3

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->fadeIconColorFilter(Landroid/widget/ImageView;ZJ)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->fadeIconAlpha(Landroid/widget/ImageView;ZJ)V

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconForceGraysaleWhenDark:Z

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->fadeGrayscale(Landroid/widget/ImageView;ZJ)V

    .line 140
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->setPictureGrayscale(ZZJ)V

    .line 117
    return-void

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ViewInvertHelper;->update(Z)V

    goto :goto_0

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateIconColorFilter(Landroid/widget/ImageView;Z)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateIconAlpha(Landroid/widget/ImageView;Z)V

    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIconForceGraysaleWhenDark:Z

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateGrayscale(Landroid/widget/ImageView;Z)V

    goto :goto_1
.end method

.method protected setPictureGrayscale(ZZJ)V
    .locals 1
    .param p1, "grayscale"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 145
    if-eqz p2, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->fadeGrayscale(Landroid/widget/ImageView;ZJ)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateGrayscale(Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method

.method protected updateGrayscale(Landroid/widget/ImageView;Z)V
    .locals 2
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z

    .prologue
    .line 225
    if-eqz p2, :cond_0

    .line 226
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->updateGrayscaleMatrix(F)V

    .line 227
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationTemplateViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 224
    :goto_0
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
