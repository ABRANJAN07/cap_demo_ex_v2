using {
    CatalogService as admin,
} from './catalog-service';

annotate admin.Employee with @(odata.draft.enabled : true);
annotate admin.WorkAssignments with @(odata.draft.enabled : true);