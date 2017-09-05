.class Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$3;
.super Ljava/lang/Object;
.source "CastTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->updateSinkView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

.field final synthetic val$summary:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;
    .param p2, "val$summary"    # Landroid/widget/TextView;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$3;->val$summary:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$3;->val$summary:Landroid/widget/TextView;

    const v1, 0x7f090059

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 490
    return-void
.end method
