.class public final Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntryTag"
.end annotation


# instance fields
.field private final mId:I

.field private final mIntent:Landroid/content/Intent;

.field private final mPriority:I


# direct methods
.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "priority"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1080
    iput p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;->mId:I

    .line 1081
    iput p2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;->mPriority:I

    .line 1082
    iput-object p3, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;->mIntent:Landroid/content/Intent;

    .line 1079
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 1086
    iget v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;->mId:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 1090
    iget v0, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;->mPriority:I

    return v0
.end method
