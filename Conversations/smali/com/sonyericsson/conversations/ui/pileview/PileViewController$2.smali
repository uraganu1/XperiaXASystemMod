.class Lcom/sonyericsson/conversations/ui/pileview/PileViewController$2;
.super Ljava/lang/Object;
.source "PileViewController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/pileview/PileView$OnPileItemDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->enableExpandedView(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/pileview/PileViewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController$2;->this$0:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPileItemDelete(Lcom/sonyericsson/conversations/ui/pileview/PileItem;)V
    .locals 2
    .param p1, "pileItem"    # Lcom/sonyericsson/conversations/ui/pileview/PileItem;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController$2;->this$0:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController$2;->this$0:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->-wrap0(Lcom/sonyericsson/conversations/ui/pileview/PileViewController;Lcom/sonyericsson/conversations/ui/pileview/PileItem;)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->-wrap1(Lcom/sonyericsson/conversations/ui/pileview/PileViewController;Lcom/android/mms/model/MediaModel;)V

    .line 81
    return-void
.end method
