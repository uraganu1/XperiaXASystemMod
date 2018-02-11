.class Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$TabClickListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$TabClickListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$TabClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$TabClickListener;-><init>(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$TabClickListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-get0(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$TabClickListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-get0(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/settings/stamina/common/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout$TabClickListener;->this$0:Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;->-get1(Lcom/sonymobile/settings/stamina/common/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 247
    return-void

    .line 244
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    return-void
.end method
