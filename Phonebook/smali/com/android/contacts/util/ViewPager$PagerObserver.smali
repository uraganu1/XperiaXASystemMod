.class Lcom/android/contacts/util/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/util/ViewPager;


# direct methods
.method private constructor <init>(Lcom/android/contacts/util/ViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/util/ViewPager;

    .prologue
    .line 2817
    iput-object p1, p0, Lcom/android/contacts/util/ViewPager$PagerObserver;->this$0:Lcom/android/contacts/util/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/util/ViewPager;Lcom/android/contacts/util/ViewPager$PagerObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/util/ViewPager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/util/ViewPager$PagerObserver;-><init>(Lcom/android/contacts/util/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2820
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager$PagerObserver;->this$0:Lcom/android/contacts/util/ViewPager;

    invoke-virtual {v0}, Lcom/android/contacts/util/ViewPager;->dataSetChanged()V

    .line 2819
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/android/contacts/util/ViewPager$PagerObserver;->this$0:Lcom/android/contacts/util/ViewPager;

    invoke-virtual {v0}, Lcom/android/contacts/util/ViewPager;->dataSetChanged()V

    .line 2823
    return-void
.end method
