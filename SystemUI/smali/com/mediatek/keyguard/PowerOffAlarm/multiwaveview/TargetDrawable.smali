.class public Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;
.super Ljava/lang/Object;
.source "TargetDrawable.java"


# static fields
.field public static final STATE_ACTIVE:[I

.field public static final STATE_FOCUSED:[I

.field public static final STATE_INACTIVE:[I


# instance fields
.field private mAlpha:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mNumDrawables:I

.field private mPositionX:F

.field private mPositionY:F

.field private final mResourceId:I

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, -0x10100a2

    const v1, 0x101009e

    .line 31
    const v0, 0x10100a2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    .line 30
    sput-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    .line 33
    filled-new-array {v1, v2}, [I

    move-result-object v0

    .line 32
    sput-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    .line 36
    const v0, 0x101009c

    .line 35
    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    .line 34
    sput-object v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 39
    iput v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 40
    iput v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mPositionX:F

    .line 41
    iput v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mPositionY:F

    .line 42
    iput v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mScaleX:F

    .line 43
    iput v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mScaleY:F

    .line 44
    iput v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mAlpha:F

    .line 46
    iput-boolean v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mEnabled:Z

    .line 48
    iput v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mNumDrawables:I

    .line 60
    iput p2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mResourceId:I

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 62
    iput p3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mNumDrawables:I

    .line 59
    return-void
.end method

.method private resizeDrawables()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 124
    iget-object v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_1

    .line 125
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 126
    .local v1, "d":Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 127
    .local v4, "maxWidth":I
    const/4 v3, 0x0

    .line 129
    .local v3, "maxHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mNumDrawables:I

    if-ge v2, v5, :cond_0

    .line 130
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    .line 131
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    .local v0, "childDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 133
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "childDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1, v8, v8, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 140
    const/4 v2, 0x0

    :goto_1
    iget v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mNumDrawables:I

    if-ge v2, v5, :cond_2

    .line 141
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    .line 142
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    .restart local v0    # "childDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    .end local v0    # "childDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "d":Landroid/graphics/drawable/StateListDrawable;
    .end local v2    # "i":I
    .end local v3    # "maxHeight":I
    .end local v4    # "maxWidth":I
    :cond_1
    iget-object v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 148
    iget-object v5, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 149
    iget-object v6, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v7, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 148
    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, -0x41000000    # -0.5f

    .line 218
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 222
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mScaleX:F

    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mScaleY:F

    iget v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mPositionX:F

    iget v3, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mPositionY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 223
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mTranslationX:F

    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mPositionX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mTranslationY:F

    iget v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mPositionY:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 224
    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 225
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 226
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 217
    return-void

    .line 219
    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mResourceId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mTranslationY:F

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mEnabled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 170
    iput p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mAlpha:F

    .line 169
    return-void
.end method

.method public setDrawable(Landroid/content/res/Resources;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 68
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 70
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-direct {p0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->resizeDrawables()V

    .line 72
    sget-object v1, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->setState([I)V

    .line 65
    return-void

    .line 68
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public setPositionX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 194
    iput p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mPositionX:F

    .line 193
    return-void
.end method

.method public setPositionY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 198
    iput p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mPositionY:F

    .line 197
    return-void
.end method

.method public setState([I)V
    .locals 2
    .param p1, "state"    # [I

    .prologue
    .line 84
    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 86
    .local v0, "d":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 83
    .end local v0    # "d":Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 154
    iput p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 153
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 158
    iput p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 157
    return-void
.end method
