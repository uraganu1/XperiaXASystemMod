.class public interface abstract Lcom/mediatek/contacts/ext/IRcsExtension$QuickContactRcsScroller;
.super Ljava/lang/Object;
.source "IRcsExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/ext/IRcsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QuickContactRcsScroller"
.end annotation


# virtual methods
.method public abstract createRcsIconView(Landroid/view/View;Landroid/view/View;Landroid/net/Uri;)Landroid/view/View;
.end method

.method public abstract updateRcsContact(Landroid/net/Uri;Z)V
.end method

.method public abstract updateRcsIconView()V
.end method
