.class public final synthetic Lz0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/N$b;


# instance fields
.field public final synthetic a:Lz0/N;

.field public final synthetic b:Lp0/j;

.field public final synthetic c:Lp0/r;


# direct methods
.method public synthetic constructor <init>(Lz0/N;Lp0/j;Lp0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/p;->a:Lz0/N;

    iput-object p2, p0, Lz0/p;->b:Lp0/j;

    iput-object p3, p0, Lz0/p;->c:Lp0/r;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lz0/p;->a:Lz0/N;

    iget-object v1, p0, Lz0/p;->b:Lp0/j;

    iget-object v2, p0, Lz0/p;->c:Lp0/r;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lz0/N;->u(Lz0/N;Lp0/j;Lp0/r;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
