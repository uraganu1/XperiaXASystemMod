.class public Lcom/mediatek/settings/ext/DefaultAppListExt;
.super Landroid/content/ContextWrapper;
.source "DefaultAppListExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IAppListExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultAppListExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 20
    const-string/jumbo v0, "DefaultAppListExt"

    const-string/jumbo v1, "constructor\n"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method


# virtual methods
.method public addLayoutAppView(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;ILandroid/graphics/drawable/Drawable;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "defaultLabel"    # Landroid/widget/TextView;
    .param p4, "position"    # I
    .param p5, "image"    # Landroid/graphics/drawable/Drawable;
    .param p6, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 25
    return-object p1
.end method

.method public setAppListItem(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 27
    return-void
.end method
