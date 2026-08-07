.class public final synthetic Lz0/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/N$d;


# instance fields
.field public final synthetic a:Lz0/V;


# direct methods
.method public synthetic constructor <init>(Lz0/V;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/K;->a:Lz0/V;

    return-void
.end method


# virtual methods
.method public final produce()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz0/K;->a:Lz0/V;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
