.class final Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$1;
.super Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$MeshProperty;
.source "DragFavoritesBitmapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$MeshProperty",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$MeshProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->getProgress()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 67
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$1;->get(Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;F)V
    .locals 0
    .param p1, "object"    # Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;
    .param p2, "value"    # F

    .prologue
    .line 63
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->setProgress(F)V

    .line 62
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # F

    .prologue
    .line 62
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$1;->setValue(Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;F)V

    return-void
.end method
