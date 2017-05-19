.class Lcom/mediatek/contacts/ext/DefaultRcsExtension$2;
.super Ljava/lang/Object;
.source "DefaultRcsExtension.java"

# interfaces
.implements Lcom/mediatek/contacts/ext/IRcsExtension$QuickContactRcsScroller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/ext/DefaultRcsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/ext/DefaultRcsExtension;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/ext/DefaultRcsExtension;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/contacts/ext/DefaultRcsExtension;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/mediatek/contacts/ext/DefaultRcsExtension$2;->this$0:Lcom/mediatek/contacts/ext/DefaultRcsExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRcsIconView(Landroid/view/View;Landroid/view/View;Landroid/net/Uri;)Landroid/view/View;
    .locals 1
    .param p1, "container"    # Landroid/view/View;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateRcsContact(Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "lookupUri"    # Landroid/net/Uri;
    .param p2, "isLoadFinished"    # Z

    .prologue
    .line 267
    return-void
.end method

.method public updateRcsIconView()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method
