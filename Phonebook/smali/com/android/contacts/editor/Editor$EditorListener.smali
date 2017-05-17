.class public interface abstract Lcom/android/contacts/editor/Editor$EditorListener;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EditorListener"
.end annotation


# static fields
.field public static final EDITOR_FORM_CHANGED:I = 0x5

.field public static final FIELD_CHANGED:I = 0x2

.field public static final FIELD_TURNED_EMPTY:I = 0x3

.field public static final FIELD_TURNED_NON_EMPTY:I = 0x4

.field public static final REQUEST_PICK_PHOTO:I = 0x1


# virtual methods
.method public abstract onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
.end method

.method public abstract onRequest(I)V
.end method
