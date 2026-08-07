.class public final synthetic Lz0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/N$b;


# instance fields
.field public final synthetic a:Lz0/N;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lu0/a$a;


# direct methods
.method public synthetic constructor <init>(Lz0/N;Ljava/lang/String;Ljava/util/Map;Lu0/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/l;->a:Lz0/N;

    iput-object p2, p0, Lz0/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lz0/l;->c:Ljava/util/Map;

    iput-object p4, p0, Lz0/l;->d:Lu0/a$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lz0/l;->a:Lz0/N;

    iget-object v1, p0, Lz0/l;->b:Ljava/lang/String;

    iget-object v2, p0, Lz0/l;->c:Ljava/util/Map;

    iget-object v3, p0, Lz0/l;->d:Lu0/a$a;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, v3, p1}, Lz0/N;->Q(Lz0/N;Ljava/lang/String;Ljava/util/Map;Lu0/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lu0/a;

    move-result-object p1

    return-object p1
.end method
