.class Lcom/mediatek/contacts/ext/DefaultViewCustomExtension$2;
.super Ljava/lang/Object;
.source "DefaultViewCustomExtension.java"

# interfaces
.implements Lcom/mediatek/contacts/ext/IViewCustomExtension$QuickContactCardViewCustom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mediatek/contacts/ext/DefaultViewCustomExtension$2;->this$0:Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCardView(Landroid/view/View;Landroid/view/View;Landroid/net/Uri;Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "container"    # Landroid/view/View;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "lookupUri"    # Landroid/net/Uri;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method
