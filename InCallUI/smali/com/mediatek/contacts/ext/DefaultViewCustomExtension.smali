.class public Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;
.super Ljava/lang/Object;
.source "DefaultViewCustomExtension.java"

# interfaces
.implements Lcom/mediatek/contacts/ext/IViewCustomExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/ext/DefaultViewCustomExtension$1;,
        Lcom/mediatek/contacts/ext/DefaultViewCustomExtension$2;,
        Lcom/mediatek/contacts/ext/DefaultViewCustomExtension$3;
    }
.end annotation


# instance fields
.field private mContactListItemViewCustom:Lcom/mediatek/contacts/ext/IViewCustomExtension$ContactListItemViewCustom;

.field private mQuickContactCardViewCustom:Lcom/mediatek/contacts/ext/IViewCustomExtension$QuickContactCardViewCustom;

.field private mQuickContactScrollerCustom:Lcom/mediatek/contacts/ext/IViewCustomExtension$QuickContactScrollerCustom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/mediatek/contacts/ext/DefaultViewCustomExtension$1;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/ext/DefaultViewCustomExtension$1;-><init>(Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;)V

    iput-object v0, p0, Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;->mContactListItemViewCustom:Lcom/mediatek/contacts/ext/IViewCustomExtension$ContactListItemViewCustom;

    .line 50
    new-instance v0, Lcom/mediatek/contacts/ext/DefaultViewCustomExtension$2;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/ext/DefaultViewCustomExtension$2;-><init>(Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;)V

    .line 49
    iput-object v0, p0, Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;->mQuickContactCardViewCustom:Lcom/mediatek/contacts/ext/IViewCustomExtension$QuickContactCardViewCustom;

    .line 59
    new-instance v0, Lcom/mediatek/contacts/ext/DefaultViewCustomExtension$3;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/ext/DefaultViewCustomExtension$3;-><init>(Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;)V

    .line 58
    iput-object v0, p0, Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;->mQuickContactScrollerCustom:Lcom/mediatek/contacts/ext/IViewCustomExtension$QuickContactScrollerCustom;

    .line 8
    return-void
.end method


# virtual methods
.method public getContactListItemViewCustom()Lcom/mediatek/contacts/ext/IViewCustomExtension$ContactListItemViewCustom;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;->mContactListItemViewCustom:Lcom/mediatek/contacts/ext/IViewCustomExtension$ContactListItemViewCustom;

    return-object v0
.end method

.method public getQuickContactCardViewCustom()Lcom/mediatek/contacts/ext/IViewCustomExtension$QuickContactCardViewCustom;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;->mQuickContactCardViewCustom:Lcom/mediatek/contacts/ext/IViewCustomExtension$QuickContactCardViewCustom;

    return-object v0
.end method

.method public getQuickContactScrollerCustom()Lcom/mediatek/contacts/ext/IViewCustomExtension$QuickContactScrollerCustom;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mediatek/contacts/ext/DefaultViewCustomExtension;->mQuickContactScrollerCustom:Lcom/mediatek/contacts/ext/IViewCustomExtension$QuickContactScrollerCustom;

    return-object v0
.end method
