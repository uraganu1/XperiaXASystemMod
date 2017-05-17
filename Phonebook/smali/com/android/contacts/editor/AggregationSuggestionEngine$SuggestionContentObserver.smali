.class final Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;
.super Landroid/database/ContentObserver;
.source "AggregationSuggestionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/AggregationSuggestionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SuggestionContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/AggregationSuggestionEngine;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/AggregationSuggestionEngine;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;->this$0:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    .line 91
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Handler;Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/AggregationSuggestionEngine;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;->this$0:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->scheduleSuggestionLookup()V

    .line 95
    return-void
.end method
