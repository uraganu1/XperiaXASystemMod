.class public Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager$AlphaPageTransformer;
.super Ljava/lang/Object;
.source "StickerTabManager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/stickers/StickerTabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlphaPageTransformer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pos"    # F

    .prologue
    .line 150
    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v1

    .line 151
    .local v0, "opacity":F
    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 148
    return-void
.end method
