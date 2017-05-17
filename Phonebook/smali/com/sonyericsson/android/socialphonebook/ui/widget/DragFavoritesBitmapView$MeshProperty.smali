.class abstract Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$MeshProperty;
.super Landroid/util/Property;
.source "DragFavoritesBitmapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "MeshProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Property",
        "<TT;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$MeshProperty;, "Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$MeshProperty<TT;>;"
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;Ljava/lang/Float;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$MeshProperty;, "Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$MeshProperty<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$MeshProperty;->setValue(Ljava/lang/Object;F)V

    .line 52
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 52
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$MeshProperty;, "Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$MeshProperty<TT;>;"
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView$MeshProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public abstract setValue(Ljava/lang/Object;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method
