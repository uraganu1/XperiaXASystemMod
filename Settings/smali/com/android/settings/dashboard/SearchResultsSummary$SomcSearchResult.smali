.class Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SomcSearchResult"
.end annotation


# instance fields
.field public header:Ljava/lang/String;

.field public iconResId:I

.field public noMatch:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "noMatch"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "summary"    # Ljava/lang/String;
    .param p5, "iconResId"    # I

    .prologue
    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->header:Ljava/lang/String;

    .line 876
    iput-object p2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->noMatch:Ljava/lang/String;

    .line 877
    iput-object p3, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->title:Ljava/lang/String;

    .line 878
    iput-object p4, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->summary:Ljava/lang/String;

    .line 879
    iput p5, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SomcSearchResult;->iconResId:I

    .line 874
    return-void
.end method
