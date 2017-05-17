.class public final Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContentDescription:Ljava/lang/String;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResourceId:I

.field private final mIntent:Landroid/content/Intent;

.field private final mIsActive:Z

.field private final mPriority:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mPriority:I

    .line 123
    iput v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mIconResourceId:I

    .line 124
    iput-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 125
    iput-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mIntent:Landroid/content/Intent;

    .line 126
    iput-object v1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mContentDescription:Ljava/lang/String;

    .line 127
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mIsActive:Z

    .line 121
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 7
    .param p1, "priority"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "iconResourceId"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 103
    if-eqz p4, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;ILandroid/content/Intent;Ljava/lang/String;Z)V

    .line 102
    return-void

    .line 103
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;ILandroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "priority"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "iconResourceId"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "contentDescription"    # Ljava/lang/String;
    .param p6, "isActive"    # Z

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mPriority:I

    .line 109
    iput-object p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 110
    iput p3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mIconResourceId:I

    .line 111
    iput-object p4, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mIntent:Landroid/content/Intent;

    .line 112
    iput-object p5, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mContentDescription:Ljava/lang/String;

    .line 113
    iput-boolean p6, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mIsActive:Z

    .line 107
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;)I
    .locals 2
    .param p1, "another"    # Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    .prologue
    .line 132
    iget v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mPriority:I

    invoke-virtual {p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getPriority()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 133
    :cond_0
    iget v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mPriority:I

    invoke-virtual {p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->getPriority()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    .line 134
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 131
    check-cast p1, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->compareTo(Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;)I

    move-result v0

    return v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconResourceId()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mIconResourceId:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mPriority:I

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;->mIsActive:Z

    return v0
.end method
