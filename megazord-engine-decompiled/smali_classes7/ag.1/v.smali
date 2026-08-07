.class public final synthetic Lag/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/l;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Leg/q;

.field public final synthetic d:Ljava/nio/file/Path;

.field public final synthetic e:Ljava/nio/file/Path;

.field public final synthetic f:Ljava/nio/file/Path;

.field public final synthetic g:Leg/q;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Leg/q;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Leg/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lag/v;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lag/v;->c:Leg/q;

    iput-object p3, p0, Lag/v;->d:Ljava/nio/file/Path;

    iput-object p4, p0, Lag/v;->e:Ljava/nio/file/Path;

    iput-object p5, p0, Lag/v;->f:Ljava/nio/file/Path;

    iput-object p6, p0, Lag/v;->g:Leg/q;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lag/v;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lag/v;->c:Leg/q;

    iget-object v2, p0, Lag/v;->d:Ljava/nio/file/Path;

    iget-object v3, p0, Lag/v;->e:Ljava/nio/file/Path;

    iget-object v4, p0, Lag/v;->f:Ljava/nio/file/Path;

    iget-object v5, p0, Lag/v;->g:Leg/q;

    move-object v6, p1

    check-cast v6, Lag/g;

    invoke-static/range {v0 .. v6}, Lag/z;->N(Ljava/util/ArrayList;Leg/q;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Leg/q;Lag/g;)LFf/P0;

    move-result-object p1

    return-object p1
.end method
