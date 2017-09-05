.class Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$2;
.super Ljava/lang/Object;
.source "CastTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    const v2, 0x1020001

    .line 281
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 283
    .local v1, "swi":Landroid/widget/Switch;
    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 284
    .local v0, "checked":Z
    if-nez v0, :cond_0

    .line 285
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/tiles/CastTile;->getHost()Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/qs/tiles/CastTile;->-get2()Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 287
    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 280
    return-void

    .line 287
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
