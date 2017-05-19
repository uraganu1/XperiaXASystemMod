.class public interface abstract Lcom/mediatek/contacts/ext/IViewCustomExtension;
.super Ljava/lang/Object;
.source "IViewCustomExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/ext/IViewCustomExtension$ContactListItemViewCustom;,
        Lcom/mediatek/contacts/ext/IViewCustomExtension$QuickContactCardViewCustom;,
        Lcom/mediatek/contacts/ext/IViewCustomExtension$QuickContactScrollerCustom;
    }
.end annotation


# virtual methods
.method public abstract getContactListItemViewCustom()Lcom/mediatek/contacts/ext/IViewCustomExtension$ContactListItemViewCustom;
.end method

.method public abstract getQuickContactCardViewCustom()Lcom/mediatek/contacts/ext/IViewCustomExtension$QuickContactCardViewCustom;
.end method

.method public abstract getQuickContactScrollerCustom()Lcom/mediatek/contacts/ext/IViewCustomExtension$QuickContactScrollerCustom;
.end method
