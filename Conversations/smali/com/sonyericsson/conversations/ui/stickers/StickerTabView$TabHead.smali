.class Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;
.super Ljava/lang/Object;
.source "StickerTabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/stickers/StickerTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabHead"
.end annotation


# instance fields
.field final bottomBar:Landroid/view/View;

.field final container:Landroid/view/View;

.field final icon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "icon"    # Landroid/widget/ImageView;
    .param p3, "bottomBar"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;->container:Landroid/view/View;

    .line 37
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;->icon:Landroid/widget/ImageView;

    .line 38
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerTabView$TabHead;->bottomBar:Landroid/view/View;

    .line 35
    return-void
.end method
