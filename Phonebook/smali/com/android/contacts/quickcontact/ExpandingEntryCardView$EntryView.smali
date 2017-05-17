.class public final Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;
.super Landroid/widget/RelativeLayout;
.source "ExpandingEntryCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntryView"
.end annotation


# instance fields
.field private mEntryContextMenuInfo:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1003
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1002
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1007
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1006
    return-void
.end method


# virtual methods
.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->mEntryContextMenuInfo:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    return-object v0
.end method

.method public setContextMenuInfo(Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryView;->mEntryContextMenuInfo:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1010
    return-void
.end method
