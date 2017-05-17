.class public abstract Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "ExtendedCursorAdapter.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 23
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 18
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method
